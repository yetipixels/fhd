-- =============================================================================
-- FAIR HOME DECOR — Supabase Auth User Creation & Profiles Fix
-- Run this in your Supabase Dashboard SQL Editor:
-- https://supabase.com/dashboard/project/cfxcoorzcomorptmuala/sql/new
-- =============================================================================

-- 1. Ensure public.profiles table exists with proper columns
CREATE TABLE IF NOT EXISTS public.profiles (
    id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    email TEXT NOT NULL,
    company_name TEXT,
    tax_vat_number TEXT,
    phone TEXT,
    role TEXT NOT NULL DEFAULT 'buyer',
    is_approved BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW()),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW())
);

-- 2. Update role check constraint to allow 'admin', 'buyer', and 'member'
ALTER TABLE public.profiles DROP CONSTRAINT IF EXISTS profiles_role_check;
ALTER TABLE public.profiles ADD CONSTRAINT profiles_role_check 
    CHECK (role IN ('admin', 'buyer', 'member'));

-- 3. Update the handle_new_user trigger function with safe exception handling
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
    INSERT INTO public.profiles (
        id,
        email,
        company_name,
        tax_vat_number,
        phone,
        role,
        is_approved
    )
    VALUES (
        NEW.id,
        COALESCE(NEW.email, ''),
        COALESCE(NEW.raw_user_meta_data->>'company_name', ''),
        COALESCE(NEW.raw_user_meta_data->>'tax_vat_number', ''),
        COALESCE(NEW.raw_user_meta_data->>'phone', ''),
        CASE 
            WHEN (NEW.raw_user_meta_data->>'role') IN ('admin', 'buyer', 'member') THEN (NEW.raw_user_meta_data->>'role')
            ELSE 'buyer'
        END,
        CASE 
            WHEN (NEW.raw_user_meta_data->>'role') = 'admin' THEN TRUE
            ELSE FALSE
        END
    )
    ON CONFLICT (id) DO UPDATE SET
        email = EXCLUDED.email;
    RETURN NEW;
EXCEPTION WHEN OTHERS THEN
    -- Fallback so user registration is NEVER blocked by trigger exceptions
    RETURN NEW;
END;
$$;

-- 4. Re-bind the trigger
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- 5. RLS policies for profiles
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Enable read profiles for own user" ON public.profiles;
DROP POLICY IF EXISTS "Enable update profiles for own user" ON public.profiles;
DROP POLICY IF EXISTS "Admins have full access on profiles" ON public.profiles;
DROP POLICY IF EXISTS "Enable full access for authenticated profiles" ON public.profiles;

-- Users can read their own profile, Admins can read all profiles
CREATE POLICY "Enable read profiles for own user"
    ON public.profiles FOR SELECT
    TO authenticated
    USING (id = auth.uid() OR public.is_admin());

-- Users can update their own profile
CREATE POLICY "Enable update profiles for own user"
    ON public.profiles FOR UPDATE
    TO authenticated
    USING (id = auth.uid())
    WITH CHECK (id = auth.uid());

-- Administrators have full permissions (SELECT, INSERT, UPDATE, DELETE) on profiles
CREATE POLICY "Admins have full access on profiles"
    ON public.profiles FOR ALL
    TO authenticated
    USING (public.is_admin())
    WITH CHECK (public.is_admin());

-- 6. Helper query to clean duplicate profiles by email (keeps the approved/latest row)
-- DELETE FROM public.profiles p1
-- WHERE p1.id NOT IN (
--     SELECT DISTINCT ON (LOWER(TRIM(p2.email))) p2.id
--     FROM public.profiles p2
--     ORDER BY LOWER(TRIM(p2.email)), p2.is_approved DESC, p2.created_at DESC
-- );



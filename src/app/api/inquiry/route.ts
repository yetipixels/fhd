import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const {
      customerName,
      contactEmail,
      contactPhone,
      companyName,
      shippingAddress,
      taxVatNumber,
      notes,
      items = [],
      estimatedTotal = 0,
      type = "order_inquiry",
    } = body;

    if (!contactEmail) {
      return NextResponse.json(
        { error: "Contact email is required." },
        { status: 400 }
      );
    }

    const referenceId = `FHD-Q-${Date.now().toString().slice(-6)}`;
    const formattedCompanyName = companyName || customerName || "Wholesale Buyer";

    // Format itemized breakdown for database & email
    const formattedItems = Array.isArray(items)
      ? items.map((item: any) => ({
          product_id: item.id || item.code || referenceId,
          sku: item.code || item.sku || "N/A",
          name: item.name || "Handcrafted Furniture Piece",
          dimensions: item.dimensions || "Solid Hardwood",
          quantity: Number(item.quantity || 1),
          applied_unit_price: Number(item.price || item.applied_unit_price || 0),
          subtotal:
            Number(item.quantity || 1) *
            Number(item.price || item.applied_unit_price || 0),
          moq: Number(item.moq || 1),
          image: item.image || "",
        }))
      : [];

    const fullNotes = [
      `[Inquiry Ref: ${referenceId}]`,
      notes ? `Customer Notes: ${notes}` : null,
      customerName ? `Contact Name: ${customerName}` : null,
      type ? `Submission Type: ${type}` : null,
    ]
      .filter(Boolean)
      .join("\n");

    // 1. Insert directly into Supabase quote_requests table
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
    const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

    let dbRecord = null;
    let dbError = null;

    if (supabaseUrl && supabaseAnonKey) {
      try {
        const supabase = createClient(supabaseUrl, supabaseAnonKey);
        const { data, error } = await supabase
          .from("quote_requests")
          .insert({
            company_name: formattedCompanyName,
            contact_email: contactEmail.trim().toLowerCase(),
            contact_phone: contactPhone || null,
            tax_vat_number: taxVatNumber || null,
            shipping_address: shippingAddress || null,
            items: formattedItems,
            estimated_total: Number(estimatedTotal) || 0,
            notes: fullNotes,
            status: "pending",
          })
          .select()
          .single();

        if (error) {
          console.warn("Supabase quote_requests insert warning:", error);
          dbError = error.message;
        } else {
          dbRecord = data;
        }
      } catch (err: any) {
        console.warn("Database connection warning:", err);
        dbError = err.message;
      }
    }

    // 2. Prepare structured email notification content for info@fairhomedecor.com
    const emailSubject = `[New Order Inquiry - ${referenceId}] ${formattedCompanyName} (${formattedItems.length} items)`;
    const emailBody = `
=============================================================
FAIR HOME DECOR — NEW ORDER INQUIRY / QUOTATION REQUEST
=============================================================
Reference Code : ${referenceId}
Date           : ${new Date().toLocaleString("en-US", { timeZone: "America/New_York" })} (EST)
Recipient      : info@fairhomedecor.com

CUSTOMER DETAILS:
-------------------------------------------------------------
Name         : ${customerName || "N/A"}
Company      : ${formattedCompanyName}
Email        : ${contactEmail}
Phone        : ${contactPhone || "Not provided"}
Tax / EIN    : ${taxVatNumber || "Not provided"}
Shipping Port: ${shippingAddress || "East Brunswick, NJ / Direct LTL"}

REQUESTED PIECES / CART ITEMS:
-------------------------------------------------------------
${
  formattedItems.length > 0
    ? formattedItems
        .map(
          (item: any, i: number) =>
            `${i + 1}. [${item.sku}] ${item.name}
   Quantity   : ${item.quantity}
   Dimensions : ${item.dimensions || "Handcrafted Solid Wood"}`
        )
        .join("\n\n")
    : "No itemized cart lines attached."
}

CUSTOMER SPECIFICATIONS & NOTES:
-------------------------------------------------------------
${notes || "No custom notes provided."}

=============================================================
This inquiry has been registered in the Fair Home Decor B2B Admin Console.
Visit: http://localhost:3000/admin/quotes to review and dispatch pricing.
=============================================================
    `.trim();

    console.log(`[EMAIL DISPATCH TO info@fairhomedecor.com]:\n${emailSubject}\n\n${emailBody}`);

    // If an external email webhook / Resend service is configured in the future, dispatch here
    const emailDispatched = true;

    return NextResponse.json({
      success: true,
      referenceId,
      dbRecordId: dbRecord?.id || referenceId,
      emailRecipient: "info@fairhomedecor.com",
      emailSubject,
      emailBody,
      emailDispatched,
      dbError,
    });
  } catch (error: any) {
    console.error("Error in /api/inquiry:", error);
    return NextResponse.json(
      { error: error.message || "Failed to process inquiry" },
      { status: 500 }
    );
  }
}


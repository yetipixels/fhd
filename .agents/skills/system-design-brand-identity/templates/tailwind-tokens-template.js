/**
 * Tailwind Configuration Design Tokens Template
 * Maps semantic tokens into Tailwind CSS utility classes
 */

module.exports = {
  theme: {
    extend: {
      colors: {
        brand: {
          primary: 'var(--color-primary)',
          'primary-hover': 'var(--color-primary-hover)',
          secondary: 'var(--color-secondary)',
          'secondary-hover': 'var(--color-secondary-hover)',
          accent: 'var(--color-accent)',
          'accent-hover': 'var(--color-accent-hover)',
        },
        surface: {
          DEFAULT: 'var(--color-surface)',
          subtle: 'var(--color-surface-subtle)',
          bg: 'var(--color-bg)',
        },
        border: {
          DEFAULT: 'var(--color-border)',
          subtle: 'var(--color-border-subtle)',
          strong: 'var(--color-border-strong)',
        },
        content: {
          main: 'var(--color-text-main)',
          muted: 'var(--color-text-muted)',
          subtle: 'var(--color-text-subtle)',
          inverse: 'var(--color-text-inverse)',
        },
        state: {
          success: 'var(--color-success)',
          'success-bg': 'var(--color-success-bg)',
          warning: 'var(--color-warning)',
          'warning-bg': 'var(--color-warning-bg)',
          error: 'var(--color-error)',
          'error-bg': 'var(--color-error-bg)',
          info: 'var(--color-info)',
          'info-bg': 'var(--color-info-bg)',
        },
      },
      fontFamily: {
        serif: ['var(--font-serif)', 'Georgia', 'serif'],
        sans: ['var(--font-sans)', 'system-ui', 'sans-serif'],
        mono: ['var(--font-mono)', 'monospace'],
      },
      boxShadow: {
        sm: 'var(--shadow-sm)',
        md: 'var(--shadow-md)',
        lg: 'var(--shadow-lg)',
        xl: 'var(--shadow-xl)',
      },
      borderRadius: {
        sm: 'var(--radius-sm)',
        md: 'var(--radius-md)',
        lg: 'var(--radius-lg)',
        xl: 'var(--radius-xl)',
      },
      zIndex: {
        dropdown: '200',
        sticky: '300',
        fixed: '500',
        drawer: '800',
        backdrop: '9000',
        modal: '9999',
        toast: '10000',
      },
    },
  },
};


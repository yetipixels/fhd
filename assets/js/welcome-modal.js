/**
 * FAIR HOME DECOR — Welcome & New Launch Announcement Modal
 * Greets first-time visitors with an elegant, respectful announcement.
 */
(function () {
  'use strict';

  // Only show once per browsing session
  const STORAGE_KEY = 'fhd_welcome_announcement_seen';
  if (sessionStorage.getItem(STORAGE_KEY)) {
    return;
  }

  function initWelcomeModal() {
    // Resolve relative asset paths based on current directory level
    const isSubpage = window.location.pathname.includes('/pages/');
    const logoSrc = isSubpage ? '../assets/images/logo.png' : 'assets/images/logo.png';
    const catalogueUrl = isSubpage ? 'catalogue.html' : 'pages/catalogue.html';
    const contactUrl = isSubpage ? 'contact.html' : 'pages/contact.html';

    // Create modal backdrop container
    const backdrop = document.createElement('div');
    backdrop.id = 'fhdWelcomeModal';
    backdrop.className = 'fhd-welcome-backdrop';
    backdrop.setAttribute('role', 'dialog');
    backdrop.setAttribute('aria-modal', 'true');
    backdrop.setAttribute('aria-label', 'Welcome to Fair Home Decor');

    backdrop.innerHTML = `
      <div class="fhd-welcome-card">
        <button type="button" class="fhd-welcome-close" id="fhdWelcomeCloseBtn" aria-label="Close Announcement">
          <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
            <line x1="18" y1="6" x2="6" y2="18"></line>
            <line x1="6" y1="6" x2="18" y2="18"></line>
          </svg>
        </button>

        <div class="fhd-welcome-emblem">
          <img src="${logoSrc}" alt="Fair Home Decor" class="fhd-welcome-logo" onerror="this.style.display='none'" />
        </div>

        <span class="fhd-welcome-badge">✦ Official Launch &amp; Trade Announcement ✦</span>

        <h2 class="fhd-welcome-title">Welcome to Fair Home Decor</h2>
        <div class="fhd-welcome-divider"></div>

        <div class="fhd-welcome-body">
          <p class="fhd-welcome-lead">
            We are honored to welcome you to our newly launched digital showroom.
          </p>
          <p>
            As we celebrate our launch, individual product prices across our handcrafted collection are currently being updated to reflect container-load (HC40) and trade rates. In the meantime, <strong>we are officially open for business, custom furniture orders, and commercial trade partnerships</strong>.
          </p>
          <p>
            You are warmly invited to browse our complete catalog of artisan furniture and home accents, as well as preview our upcoming <strong>Festive &amp; Holiday Collection</strong> arriving very soon.
          </p>
          <p class="fhd-welcome-quote">
            “Considered living, beautifully made — crafted in our own factory by skilled artisans.”
          </p>
        </div>

        <div class="fhd-welcome-actions">
          <a href="${catalogueUrl}" class="fhd-welcome-btn-primary" id="fhdWelcomeExploreBtn">
            <span>Explore Catalogue</span>
            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><polyline points="9 18 15 12 9 6"/></svg>
          </a>
          <a href="${contactUrl}" class="fhd-welcome-btn-secondary" id="fhdWelcomeContactBtn">
            Contact Trade Team
          </a>
        </div>
      </div>
    `;

    document.body.appendChild(backdrop);

    // Global close handler
    window.closeFhdWelcomeModal = function () {
      backdrop.classList.remove('is-visible');
      sessionStorage.setItem(STORAGE_KEY, 'true');
      setTimeout(() => {
        if (backdrop.parentNode) {
          backdrop.parentNode.removeChild(backdrop);
        }
      }, 400);
    };

    // Attach click events
    const closeBtn = document.getElementById('fhdWelcomeCloseBtn');
    if (closeBtn) closeBtn.addEventListener('click', window.closeFhdWelcomeModal);

    const exploreBtn = document.getElementById('fhdWelcomeExploreBtn');
    if (exploreBtn) exploreBtn.addEventListener('click', window.closeFhdWelcomeModal);

    const contactBtn = document.getElementById('fhdWelcomeContactBtn');
    if (contactBtn) contactBtn.addEventListener('click', window.closeFhdWelcomeModal);

    // Close on clicking backdrop outside card
    backdrop.addEventListener('click', function (e) {
      if (e.target === backdrop) {
        window.closeFhdWelcomeModal();
      }
    });

    // Close on Escape key
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && backdrop.classList.contains('is-visible')) {
        window.closeFhdWelcomeModal();
      }
    });

    // Reveal gracefully with a gentle 450ms delay
    setTimeout(() => {
      backdrop.classList.add('is-visible');
    }, 450);
  }

  if (document.readyState === 'complete' || document.readyState === 'interactive') {
    initWelcomeModal();
  } else {
    document.addEventListener('DOMContentLoaded', initWelcomeModal);
  }
})();

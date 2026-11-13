/**
 * FAIR HOME DECOR — Premium Page Transitions & Top Progress Bar
 * Enhances site navigation with smooth exit/enter states and instant tactile feedback.
 */
(function () {
  'use strict';

  // Ensure progress bar element exists in DOM
  let progressBar = document.getElementById('fhd-progress-bar');
  if (!progressBar) {
    progressBar = document.createElement('div');
    progressBar.id = 'fhd-progress-bar';
    document.documentElement.appendChild(progressBar);
  }

  // Initial load sweep
  function finishInitialLoad() {
    if (!progressBar) return;
    progressBar.classList.add('active');
    progressBar.style.width = '100%';
    setTimeout(() => {
      progressBar.style.opacity = '0';
      setTimeout(() => {
        progressBar.classList.remove('active');
        progressBar.style.width = '0%';
        progressBar.style.opacity = '';
      }, 250);
    }, 200);
  }

  if (document.readyState === 'complete' || document.readyState === 'interactive') {
    finishInitialLoad();
  } else {
    document.addEventListener('DOMContentLoaded', finishInitialLoad);
  }

  // Handle bfcache (browser back/forward navigation)
  window.addEventListener('pageshow', function (event) {
    document.body.classList.remove('page-transitioning-out');
    if (progressBar) {
      progressBar.style.opacity = '0';
      progressBar.style.width = '0%';
      progressBar.classList.remove('active');
    }
  });

  // Intercept internal link navigations for butter-smooth transition
  document.addEventListener('click', function (e) {
    // Only handle standard left clicks without modifier keys
    if (e.button !== 0 || e.metaKey || e.ctrlKey || e.shiftKey || e.altKey) return;

    const link = e.target.closest('a');
    if (!link) return;

    const href = link.getAttribute('href');
    if (!href) return;

    // Skip special links
    if (
      href.startsWith('#') ||
      href.startsWith('mailto:') ||
      href.startsWith('tel:') ||
      href.startsWith('javascript:') ||
      link.hasAttribute('download') ||
      (link.target && link.target !== '_self')
    ) {
      return;
    }

    // Resolve destination URL
    let targetUrl;
    try {
      targetUrl = new URL(link.href, window.location.href);
    } catch (err) {
      return;
    }

    // Only apply to same-origin pages
    if (targetUrl.origin !== window.location.origin) return;

    // Skip if navigating to identical path and search with just a hash change
    if (
      targetUrl.pathname === window.location.pathname &&
      targetUrl.search === window.location.search &&
      targetUrl.hash
    ) {
      return;
    }

    // If already on this exact page without hash
    if (
      targetUrl.pathname === window.location.pathname &&
      targetUrl.search === window.location.search &&
      !targetUrl.hash &&
      !window.location.hash
    ) {
      return;
    }

    // Prevent jarring default flash navigation
    e.preventDefault();

    // 1. Kick off top progress bar
    if (progressBar) {
      progressBar.classList.add('active');
      progressBar.style.opacity = '1';
      progressBar.style.width = '75%';
    }

    // 2. Add smooth exit fade to body
    document.body.classList.add('page-transitioning-out');

    // 3. Complete transition and execute navigation
    setTimeout(function () {
      if (progressBar) {
        progressBar.style.width = '100%';
      }
      window.location.href = targetUrl.href;
    }, 190);
  });
})();


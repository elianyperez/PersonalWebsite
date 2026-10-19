(function () {
  'use strict';
  var root = document.documentElement;
  var preference = null;
  var media = window.matchMedia ? window.matchMedia('(prefers-color-scheme: dark)') : null;
  try { preference = localStorage.getItem('eliany-theme'); } catch (error) {}
  if (preference !== 'light' && preference !== 'dark') preference = null;
  function apply(theme) {
    root.dataset.theme = theme;
    root.style.colorScheme = theme;
    var button = document.getElementById('theme-toggle');
    if (button) {
      button.hidden = false;
      button.setAttribute('aria-pressed', String(theme === 'dark'));
      button.setAttribute('aria-label', theme === 'dark' ? 'Switch to light mode' : 'Switch to dark mode');
      button.textContent = theme === 'dark' ? '☀ Light' : '☾ Dark';
    }
  }
  apply(preference || (media && media.matches ? 'dark' : 'light'));
  function initialize() {
    apply(root.dataset.theme);
    var button = document.getElementById('theme-toggle');
    if (button) button.addEventListener('click', function () {
      preference = root.dataset.theme === 'dark' ? 'light' : 'dark';
      try { localStorage.setItem('eliany-theme', preference); } catch (error) {}
      apply(preference);
    });
  }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', initialize);
  else initialize();
  function systemChanged(event) { if (!preference) apply(event.matches ? 'dark' : 'light'); }
  if (media) {
    if (media.addEventListener) media.addEventListener('change', systemChanged);
    else if (media.addListener) media.addListener(systemChanged);
  }
  window.addEventListener('storage', function (event) {
    if (event.key !== 'eliany-theme' && event.key !== null) return;
    preference = event.newValue === 'dark' || event.newValue === 'light' ? event.newValue : null;
    apply(preference || (media && media.matches ? 'dark' : 'light'));
  });
})();

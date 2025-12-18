// Static Background - Maximum Performance
// No animation for optimal Lighthouse score

(function() {
  const container = document.getElementById('canvas-container');
  
  if (!container) return;
  
  // Set static dark blue gradient background
  container.style.background = 'linear-gradient(135deg, #0a1628 0%, #1a2b4a 50%, #0f1e3a 100%)';
  container.style.position = 'fixed';
  container.style.top = '0';
  container.style.left = '0';
  container.style.width = '100%';
  container.style.height = '100%';
  container.style.zIndex = '-1';
})();

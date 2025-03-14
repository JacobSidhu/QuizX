/*ThemeManager class manages the theme and toggles between light and dark theme.*/

class ThemeManager {

  constructor() {
    this.theme = 'light'; // Applying default theme.
    this.applyTheme();
  }
  // Methods used to set theme, explicitly.
  setTheme(theme) {
    if (theme === 'light' || theme === 'dark') {
      this.theme = theme;
      this.applyTheme();
      this.notifyAllIframes(); // Notify all iframes about the theme change
    } else {
      console.error('Invalid theme specified');
    }
  }
  // This method apply the theme.
  applyTheme() {
    // Apply the theme to the main page
    document.documentElement.setAttribute('data-theme', this.theme);
  }

  // Method notify a specific iframe used within the application. so that all external files
  // may get notifed on theme change.
  notifyIframe(iframe) {
    iframe.contentWindow.postMessage({ theme: this.theme }, '*');
  }

  // Methods notify all iframe elements.
  notifyAllIframes() {
    const iframes = document.querySelectorAll('iframe');
    iframes.forEach((iframe) => {
      this.notifyIframe(iframe);
    });
  }
}

// Exporting Class as default.
export default ThemeManager;
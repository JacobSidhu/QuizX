// Import the ThemeManager class to handle theme-related functionality
import ThemeManager from '/style/theme_manager.js';
// import LoadCategoryList from '/ui/pages/questions_app_ui/categories_list/categories_list.js';

// const categories = new LoadCategoryList();

// Initialize the ThemeManager to manage the current theme
const themeManager = new ThemeManager();

// Grab references to important DOM elements
const themeToggleButton = document.getElementById('theme-switch'); // The theme toggle switch
const logo = document.getElementById('logo'); // The logo that changes with the theme
const iframe = document.getElementById('interface-body'); // The iframe displaying external content

// Function to update the logo based on the current theme
const updateLogo = (theme) => {
  // If the theme is light, use the light logo; otherwise, use the dark logo
  logo.src = theme === 'dark' 
    ? '/assets/logo/logo-light.png' 
    : '/assets/logo/logo-dark.png';
};

// Function to handle the theme toggle event
const handleThemeToggle = () => {
  // Determine the new theme: if it's currently light, switch to dark, and vice versa
  const newTheme = themeManager.theme === 'light' ? 'dark' : 'light';
  
  // Update the theme using the ThemeManager
  themeManager.setTheme(newTheme);
  
  // Update the logo to match the new theme
  updateLogo(newTheme);
};

// Add an event listener to the theme toggle button
// When the user toggles the switch, the handleThemeToggle function will run
themeToggleButton.addEventListener('change', handleThemeToggle);

// When the iframe finishes loading, notify it about the current theme
iframe.onload = () => {
  themeManager.notifyIframe(iframe);
};

// Initialize the logo based on the current theme when the page first loads
updateLogo(themeManager.theme);
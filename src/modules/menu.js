/*
 * Toggle Dark Mode
 */
document.getElementById("toggleDarkModeID").addEventListener("click", toggleDarkMode);

function toggleDarkMode() {
  if (document.getElementById('toggleDarkModeID').checked) {
    document.documentElement.setAttribute('data-theme', 'light');
  }
  else{
    document.documentElement.setAttribute('data-theme', 'dark');
  }
}

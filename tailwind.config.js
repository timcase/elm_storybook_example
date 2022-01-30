const colors = require('tailwindcss/colors')
module.exports = {
  purge: [
    "./stories/**/*.{js,jsx,ts,tsx}",
    "./src/**/*.elm"
  ],
  darkMode: false, // or 'media' or 'class',
  mode: 'jit'
};

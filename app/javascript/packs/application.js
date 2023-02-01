// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { scrolledNav } from '../components/navbar';
import { scrolledNav2 } from '../components/navbar';
import { scrolledNav3 } from '../components/navbar';
import { scrolledNav4 } from '../components/navbar';
import { scrolledNav5 } from '../components/navbar';
import { formSportSessions } from '../components/form';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  scrolledNav(); // scroll effect of the navbar on Home Page
  scrolledNav2();
  scrolledNav3();
  scrolledNav4();
  scrolledNav5();
  formSportSessions();
});


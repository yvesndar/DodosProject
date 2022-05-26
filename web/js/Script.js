//for menu bar
function show_menu() {
  document.getElementById("nav-link").classList.toggle("show");
}

let btnShowMenu = document
  .querySelector(".btn")
  .addEventListener("click", show_menu);

// for sign up form
function signUpForm() {
  document.querySelector(".form").classList.add("show");
  document.querySelector(".overlay").classList.remove("hidden");
}

function off_form() {
  document.querySelector(".overlay").classList.add("hidden");
  document.querySelector(".form").classList.remove("show");
}

let btnremove = document
  .querySelector(".cancel-btn")
  .addEventListener("click", off_form);
let overlayoff = document
  .querySelector(".overlay")
  .addEventListener("click", off_form);

let btnshow = document
  .getElementById("sign-up")
  .addEventListener("click", signUpForm);

//for login form

function showLoginForm() {
  document.querySelector(".login-form").classList.add("show");
  document.querySelector(".overlay").classList.remove("hidden");
}

function OffLoginForm() {
  document.querySelector(".login-form").classList.remove("show");
  document.querySelector(".overlay").classList.add("hidden");
}

document.querySelector(".log-in").addEventListener("click", showLoginForm);
document.querySelector(".overlay").addEventListener("click", OffLoginForm);

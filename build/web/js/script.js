/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function show_menu() {
  document.getElementById("nav-link").classList.toggle("show");
}

btnShowMenu = document.querySelector(".btn").addEventListener("click", show_menu);

function signUpForm() {
  document.querySelector(".sign-up-form").classList.add("show");
  document.querySelector(".overlay").classList.add("on");
}

function off_form() {
  document.querySelector(".overlay").classList.remove("on");
  document.querySelector(".sign-up-form").classList.remove("show");
}

overlayoff=document.querySelector(".overlay").addEventListener("click", off_form);
btnshow = document.getElementById("sign-up").addEventListener("click", signUpForm);




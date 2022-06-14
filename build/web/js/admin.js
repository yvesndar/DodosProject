const btn_tables = document.querySelector(".button-tables");
const btn = document.querySelectorAll(".buttons");
const tables = document.querySelectorAll(".tables");

btn_tables.addEventListener("click", function (btns) {
  const clicked = btns.target.closest(".buttons");
  console.log(clicked);
  if (!clicked) return;
  btn.forEach((b) => b.classList.remove("selected"));
  tables.forEach((t) => t.classList.remove("show"));
  clicked.classList.add("selected");
  document.querySelector(`.t-${clicked.dataset.table}`).classList.add("show");
});

const addbtn = document.querySelector(".add-car");
const carform = document.querySelector(".car-details");
const overlay = document.querySelector(".overlay");
const cancel = document.querySelector(".cancel");

function showform() {
  carform.classList.add("show");
  overlay.classList.remove("hidden");
}

function removeform() {
  carform.classList.remove("show");
  overlay.classList.add("hidden");
}
cancel.addEventListener("click", removeform);
addbtn.addEventListener("click", showform);

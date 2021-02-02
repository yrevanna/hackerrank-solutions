let btn = document.getElementById("btn");

btn.addEventListener("click", function (event) {
  this.innerHTML = parseInt(this.innerHTML) + 1;
});

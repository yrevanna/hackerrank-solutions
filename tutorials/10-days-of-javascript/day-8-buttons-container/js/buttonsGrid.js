const place = [1, 2, 3, 6, 9, 8, 7, 4];
const arr = [1, 2, 3, 6, 9, 8, 7, 4];

let btn = document.getElementById("btn5");
btn.addEventListener("click", function (event) {
  arr.unshift(arr.pop());
  for (i = 0; i <= 7; i++) {
    document.getElementById("btn" + place[i]).innerHTML = arr[i];
  }
});

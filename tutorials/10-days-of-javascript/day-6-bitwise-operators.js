/**
 * Url: https://www.hackerrank.com/challenges/js10-bitwise/problem
 * Name: Day 6: Bitwise Operators
 *
 **/

function getMaxLessThanK(n, k) {
  let max_anb = 0;
  for (let b = n; b > 0; b--) {
    for (let a = b - 1; a > 0; a--) {
      if ((a & b) < k && (a & b) > max_anb) {
        max_anb = a & b;
      }
    }
  }
  return max_anb;
}

const arr = [
  [5, 2],
  [8, 5],
  [2, 2],
];

for (let i = 0; i < arr.length; i++) {
  const [n, k] = arr[i];
  console.log(getMaxLessThanK(n, k));
}

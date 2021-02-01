/**
 * Url: https://www.hackerrank.com/challenges/js10-function/problem
 * Name: Day 1: Functions
 *
 *
 * Create the function factorial here
 **/
function factorial(n) {
  if (n < 2) {
    return 1;
  }
  return n * factorial(n - 1);
}

console.log(factorial(4));

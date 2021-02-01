/**
 * Url: https://www.hackerrank.com/challenges/js10-try-catch-and-finally/problem
 * Name: Day 3: Try, Catch, and Finally
 *
 **/

/*
 * Complete the reverseString function
 * Use console.log() to print to stdout.
 */
function reverseString(s) {
  try {
    console.log(s.split("").reverse().join(""));
  } catch (e) {
    console.log(e.message);
    return s;
  }
}

console.log(reverseString("1234"));

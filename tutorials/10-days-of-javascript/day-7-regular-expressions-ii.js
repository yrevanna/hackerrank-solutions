/**
 * Url: https://www.hackerrank.com/challenges/js10-regexp-2/problem
 * Name: Day 7: Regular Expressions II
 *
 **/

function regexVar() {
  /*
   * Declare a RegExp object variable named 're'
   * It must match a string that starts with 'Mr.', 'Mrs.', 'Ms.', 'Dr.', or 'Er.',
   * followed by one or more letters.
   */

  /*
   * Do not remove the return statement
   */
  const re = /^(Mr|Mrs|Ms|Dr|Er)\.[a-zA-Z]+$/;
  return re;
}

const re = regexVar();
const s = "Mrs.Y";

console.log(!!s.match(re));

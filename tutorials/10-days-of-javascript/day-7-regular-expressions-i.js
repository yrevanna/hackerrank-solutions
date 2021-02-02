/**
 * Url: https://www.hackerrank.com/challenges/js10-regexp-1/problem
 * Name: Day 7: Regular Expressions I
 *
 **/

function regexVar() {
  /*
   * Declare a RegExp object variable named 're'
   * It must match a string that starts and ends with the same vowel (i.e., {a, e, i, o, u})
   */

  /*
   * Do not remove the return statement
   */
  const re = /^([aeiouAEIOU]).*\1$/;
  return re;
}

const re = regexVar();
const s = "abcda";

console.log(re.test(s));

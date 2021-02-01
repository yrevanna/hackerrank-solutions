/**
 * Url: https://www.hackerrank.com/challenges/js10-loops/problem
 * Name: Day 2: Loops
 *
 **/

function vowelsAndConsonants(s) {
  for (let i = 0; i < s.length; i++) {
    if (
      s[i] === "a" ||
      s[i] === "e" ||
      s[i] === "i" ||
      s[i] === "o" ||
      s[i] === "u"
    ) {
      console.log(s[i]);
    }
  }
  for (let i = 0; i < s.length; i++) {
    if (
      s[i] !== "a" &&
      s[i] !== "e" &&
      s[i] !== "i" &&
      s[i] !== "o" &&
      s[i] !== "u"
    ) {
      console.log(s[i]);
    }
  }
}

console.log(vowelsAndConsonants("javascriptloops"));

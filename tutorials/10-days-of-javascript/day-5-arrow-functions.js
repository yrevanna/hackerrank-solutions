/**
 * Url: https://www.hackerrank.com/challenges/js10-arrows/problem
 * Name: Day 5: Arrow Functions
 *
 **/

/*
 * Modify and return the array so that all even elements are doubled and all odd elements are tripled.
 *
 * Parameter(s):
 * nums: An array of numbers.
 */
function modifyArray(nums) {
  return nums.map((ele) => (ele % 2 === 0 ? ele * 2 : ele * 3));
}

const n = 5;
const a = "1 2 3 4 5".split(" ").map(Number);

console.log(modifyArray(a).toString().split(",").join(" "));

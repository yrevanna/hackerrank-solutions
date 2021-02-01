/**
 * Url: https://www.hackerrank.com/challenges/js10-arrays/problem
 * Name: Day 3: Arrays
 *
 **/

/**
 *   Return the second largest number in the array.
 *   @param {Number[]} nums - An array of numbers.
 *   @return {Number} The second largest number in the array.
 **/
function getSecondLargest(nums) {
  // Complete the function
  return nums
    .filter((e, i, self) => self.indexOf(e) === i)
    .sort((a, b) => a < b)[1];
}

console.log(getSecondLargest([2, 3, 6, 6, 5]));

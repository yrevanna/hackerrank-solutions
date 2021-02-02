/**
 * Url: https://www.hackerrank.com/challenges/js10-let-and-const/problem
 * Name: Day 1: Let and Const
 *
 **/

function main() {
  // Write your code here. Read input using 'readLine()' and print output using 'console.log()'.
  let r = readLine();

  // Print the area of the circle:
  console.log(Math.PI * r * r);

  // Print the perimeter of the circle:
  console.log(2 * Math.PI * r);

  try {
    // Attempt to redefine the value of constant variable PI
    PI = 0;
    // Attempt to print the value of PI
    console.log(PI);
  } catch (error) {
    console.error("You correctly declared 'PI' as a constant.");
  }
}

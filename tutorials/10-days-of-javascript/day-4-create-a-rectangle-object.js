/**
 * Url: https://www.hackerrank.com/challenges/js10-objects/problem
 * Name: Day 4: Create a Rectangle Object
 *
 **/

/*
 * Complete the Rectangle function
 */
function Rectangle(a, b) {
  return {
    length: a,
    width: b,
    perimeter: 2 * (a + b),
    area: a * b,
  };
}

const rec = new Rectangle(4, 5);

console.log(rec.length);
console.log(rec.width);
console.log(rec.perimeter);
console.log(rec.area);

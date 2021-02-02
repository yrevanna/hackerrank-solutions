/**
 * Url: https://www.hackerrank.com/challenges/js10-template-literals/problem
 * Name: Day 5: Template Literals
 *
 **/

/*
 * Determine the original side lengths and return an array:
 * - The first element is the length of the shorter side
 * - The second element is the length of the longer side
 *
 * Parameter(s):
 * literals: The tagged template literal's array of strings.
 * expressions: The tagged template literal's array of expression values (i.e., [area, perimeter]).
 */
function sides(literals, ...expressions) {
  const area = expressions[0];
  const perimeter = expressions[1];
  const root = Math.sqrt(Math.pow(perimeter, 2) - 16 * area);
  const strings = [(perimeter + root) / 4, (perimeter - root) / 4].sort();
  return strings;
}

let s1 = 14;
let s2 = 10;

[s1, s2] = [s1, s2].sort();

const [x, y] = sides`The area is: ${s1 * s2}.\nThe perimeter is: ${
  2 * (s1 + s2)
}.`;

console.log(s1 === x ? s1 : -1);
console.log(s2 === y ? s2 : -1);

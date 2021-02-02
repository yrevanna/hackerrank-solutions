/**
 * Url: https://www.hackerrank.com/challenges/js10-date/problem
 * Name: Day 6: JavaScript Dates
 *
 **/

// The days of the week are: "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
function getDayName(dateString) {
  let dayName;
  // Write your code here
  var weekday = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];
  let dayindex = new Date(dateString).getDay();
  dayName = weekday[dayindex];
  return dayName;
}

const d = ["10/11/2009", "11/10/2010"];

for (let i = 0; i < d.length; i++) {
  const date = d[i];

  console.log(getDayName(date));
}

// Example of using Dart's DateTime class
// --------------------------------------
// Demonstrates creating, formatting, comparing, and manipulating dates.

void main() {
  // Get the current date and time
  var now = DateTime.now();
  print(now); // e.g. 2025-08-27 08:42:10.123

  // Add 60 days to the current date
  var now60 = now.add(Duration(days: 60));
  print(now60);

  // Useful constants from DateTime
  print(DateTime.monthsPerYear); // 12
  print(DateTime.daysPerWeek);   // 7
  print(DateTime.monday);        // 1 (Monday = 1, ..., Sunday = 7)
  print(DateTime.sunday);        // 7
  print(DateTime.january);       // 1
  print(DateTime.december);      // 12

  // Create a date using UTC (Coordinated Universal Time)
  var date = DateTime.utc(1989, 11, 9);
  print(date); // 1989-11-09 00:00:00.000Z

  // Same as above but using DateTime constant for the month
  var date2 = DateTime.utc(1989, DateTime.november, 9);
  print(date2);

  // Parse an ISO8601 date string (with "z" meaning UTC)
  var date3 = DateTime.parse('1969-07-20 20:18:04z');
  print(date3);

  // Check if a date is in UTC
  print(date.isUtc);  // true
  print(date3.isUtc); // true

  // Extract date parts
  print(date.month);   // 11
  print(date3.month);  // 7
  print(date.weekday); // 4 (Thursday)
  print(date3.weekday);// 7 (Sunday)
  print(date.day);     // 9
  print(date3.day);    // 20

  // Constants for weekdays
  print(DateTime.thursday); // 4
  print(DateTime.sunday);   // 7

  // Extract the hour
  print(date3.hour); // 20

  // Compare dates
  print(date.isAfter(date3));  // true
  print(date.isBefore(date3)); // false

  // Get the difference between two dates
  var dif = date.difference(date3);
  print(dif.inDays); // number of days between date and date3
}

import 'dart:math';

void main() {
  // Generate a random number between 0 and 99 to simulate a student's grade
  var degree = Random().nextInt(100);
  print('Degree = $degree');

  // Grade system based on degree
  if (degree >= 90) {
    // A grade (Excellent)
    if (degree > 94) {
      print('A');   // A (95 - 100)
    } else {
      print('-A');  // A- (90 - 94)
    }
  } else if (degree >= 80) {
    // B grade (Very Good)
    if (degree > 84) {
      print('B');   // B (85 - 89)
    } else {
      print('-B');  // B- (80 - 84)
    }
  } else if (degree >= 70) {
    // C grade (Good)
    if (degree > 74) {
      print('C');   // C (75 - 79)
    } else {
      print('-C');  // C- (70 - 74)
    }
  } else if (degree >= 60) {
    // D grade (Pass)
    if (degree > 64) {
      print('D');   // D (65 - 69)
    } else {
      print('-D');  // D- (60 - 64)
    }
  } else {
    // Anything below 60 is considered Fail
    print('F');     // Fail (0 - 59)
  }

  // -------------------- EXTRA EXAMPLES --------------------

  // Example 1: Using a direct value instead of random
  var fixedDegree = 88;
  print('\nFixed Degree = $fixedDegree');
  print('Grade = ${getGrade(fixedDegree)}');

  // Example 2: Checking multiple students at once
  List<int> degrees = [95, 82, 73, 61, 45];
  print('\nBatch results:');
  for (var d in degrees) {
    print('Degree = $d → Grade = ${getGrade(d)}');
  }
}

// Reusable function to calculate grade (cleaner approach)
String getGrade(int degree) {
  if (degree >= 90) return degree > 94 ? 'A' : '-A';
  if (degree >= 80) return degree > 84 ? 'B' : '-B';
  if (degree >= 70) return degree > 74 ? 'C' : '-C';
  if (degree >= 60) return degree > 64 ? 'D' : '-D';
  return 'F';
}

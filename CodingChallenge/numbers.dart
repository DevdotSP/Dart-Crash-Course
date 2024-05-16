// Function to determine if a number is odd
bool isOdd(int number) {
  return number % 2 != 0;
}

// Function to determine if a number is even
bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  int numberToCheck = 4; // Specify the number to check (e.g., 5)

  // Check if the specified number is odd or even
  if (isOdd(numberToCheck)) {
    print('$numberToCheck is odd.');
  } else {
    print('$numberToCheck is even.');
  }
}

// Function to check if a character is a consonant (non-vowel and non-space)
bool isConsonant(String ch) {
  String lowerCh = ch.toLowerCase();
  return !('aeiou'.contains(lowerCh) || lowerCh.trim().isEmpty);
}

// Function to check if a character is a vowel (including 'a', 'e', 'i', 'o', 'u')
bool isVowel(String ch) {
  String lowerCh = ch.toLowerCase();
  return 'aeiou'.contains(lowerCh);
}

// Function to count consonants in a given input string
int countConsonants(String input) {
  return input.split('').where((ch) => isConsonant(ch)).length;
}

// Function to count vowels in a given input string
int countVowels(String input) {
  return input.split('').where((ch) => isVowel(ch)).length;
}

void main() {
  String input = 'Hello World! How are you?';

  // Count consonants in the input string
  int consonantCount = countConsonants(input);

  // Count vowels in the input string
  int vowelCount = countVowels(input);

  // Print the counts of consonants and vowels
  print('Input String: $input');
  print('Consonant Count: $consonantCount');
  print('Vowel Count: $vowelCount');
}

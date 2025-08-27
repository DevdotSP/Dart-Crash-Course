void main() {
  var name = 'Raphael';

  // 🔹 Check if string is empty or not
  print('Is empty? ${name.isEmpty}');        // false
  print('Is not empty? ${name.isNotEmpty}'); // true

  // 🔹 Change case
  print('Lowercase: ${name.toLowerCase()}'); // raphael
  print('Uppercase: ${name.toUpperCase()}'); // RAPHAEL

  // 🔹 Check if string contains a substring
  print('Contains "pha"? ${name.contains('pha')}'); // true

  // 🔹 Replace part of string
  print('replaceRange(0,2,"pae"): ${name.replaceRange(0, 2, 'pae')}'); // paephael
  print('replaceFirst("a","pae"): ${name.replaceFirst('a', 'pae')}');  // Rpaephael
  print('replaceAll("a","pae"): ${name.replaceAll('a', 'pae')}');      // Rpaephpaeel

  // 🔹 Split string into a list and join back
  var text = '                        R#a#p#h#a#e#l';
  print('Original text: "$text"');

  var v1 = text.split('#'); // Split by '#' → List<String>
  print('Split by #: $v1');

  var v2 = v1.join('#');    // Join list back with '#'
  print('Joined back: $v2');

  // 🔹 Remove all '#' and trim spaces
  print('Remove # and trim: ${v2.replaceAll('#', '').trim()}'); // Raphael
  print('Trim only: "${text.trim()}"');                          // R#a#p#h#a#e#l

  // 🔹 Extra examples:
  // Remove first character
  print('Remove first char: ${name.substring(1)}'); // aphael

  // Get substring
  print('Substring (1,4): ${name.substring(1,4)}'); // ap h

  // Check startsWith / endsWith
  print('Starts with "Ra"? ${name.startsWith('Ra')}'); // true
  print('Ends with "el"? ${name.endsWith('el')}');     // true

  // Repeat string
  print('Repeat 3 times: ${name * 3}'); // RaphaelRaphaelRaphael
}

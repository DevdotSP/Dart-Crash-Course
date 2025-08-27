import 'dart:convert';
import 'dart:io';

void main() async {
  // Create a File object pointing to "data.txt" (can be relative or absolute path).
  final file = File('data.txt');

  // ✅ Check if the file already exists
  if (await file.exists()) {
    print('File exists ✅');

    // Read the file content as a string
    final str = file.readAsStringSync();
    print('📖 File content: $str');

    // Copy the file to a new file "data2.txt"
    await file.copy('data2.txt').then((value) => print('📂 File copied to data2.txt'));

    // Rename the file to "data_renamed.txt"
    await file.rename('data_renamed.txt').then((value) => print('✏️ File renamed to data_renamed.txt'));

    // Delete the file
    // await file.delete().then((value) => print('🗑️ File deleted'));

  } else {
    print('File not found ❌');

    // Create the file (empty at first)
    await file.create().then((value) => print('📄 File created: ${value.path}'));

    // Write text to the file
    file.writeAsStringSync('Welcome to Dart File Handling!');
    print('✍️ Wrote initial content to the file.');
  }

  // ====================================================
  // More Examples (step by step)
  // ====================================================

  final exampleFile = File('example.txt');

  // 1️⃣ Write to file (overwrite if exists)
  exampleFile.writeAsStringSync('Hello World!');
  print('✅ Wrote "Hello World!" to example.txt');

  // 2️⃣ Append text to file
  exampleFile.writeAsStringSync('\nAppended line.', mode: FileMode.append);
  print('✅ Appended new line to example.txt');

  // 3️⃣ Read the entire file
  final allContent = exampleFile.readAsStringSync();
  print('📖 example.txt content:\n$allContent');

  // 4️⃣ Read line by line using Stream
  print('📖 Reading line by line:');
  await exampleFile.openRead()
      .transform(SystemEncoding().decoder) // decode bytes into string
      .transform(const LineSplitter())    // split into lines
      .forEach((line) => print('➡️ $line'));

  // 5️⃣ Delete file when done
  // await exampleFile.delete();
  // print('🗑️ example.txt deleted');
}

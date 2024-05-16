import 'dart:io';

void main() async {
  final file = File('data.txt');

  if (await file.exists()) {
    // file.deleteSync();
    // print('File Deleted');

    final str = file.readAsStringSync();
    print(str);
    await file.copy('data2.txt').then((value) => print('File Copied'));
  } else {
    print('File not found');
    await file.create().then((value) => print('The file is created'));
    file.writeAsStringSync('Welcome');
  }
}

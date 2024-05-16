void main() {
  var name = 'Raphael';
  print(name.isEmpty);
  print(name.isNotEmpty);
  print(name.toLowerCase());
  print(name.toUpperCase());
  print(name.contains('pha'));
  print(name.replaceRange(0, 2, 'pae'));
  print(name.replaceFirst('a', 'pae'));
  print(name.replaceAll('a', 'pae'));

  var text = '                        R#a#p#h#a#e#l';
  var v1 = text.split('#');
  print(v1);
  var v2 = v1.join('#');
  print(v2);
  print(v2.replaceAll('#', '').trim());
  print(text.trim());
}

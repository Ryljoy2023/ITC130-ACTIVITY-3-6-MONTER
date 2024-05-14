import 'dart:io';

void main() {

  stdout.write('Enter the file name: ');
  String? fileName = stdin.readLineSync();

  try {
    
    File file = File(fileName!);
    if (!file.existsSync()) {
      print('File not found.');
      return;
    }

   
    String contents = file.readAsStringSync();
    print('File contents:');
    print(contents);
  } catch (e) {
    print('Error: $e');
  }
}

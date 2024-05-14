import 'dart:io';

void main() {
  
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';


  File inputFile = File(inputFilePath);
  List<String> lines = inputFile.readAsLinesSync();

 
  int sum = 0;
  for (String line in lines) {
    try {
      int number = int.parse(line);
      sum += number;
    } catch (e) {
      print('Error parsing number: $e');
    }
  }


  File outputFile = File(outputFilePath);
  outputFile.writeAsStringSync('Sum of numbers: $sum');
  
  print('Sum calculated and written to $outputFilePath');
}

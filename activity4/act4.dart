import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  try {
   
    String apiUrl = 'https://love-calculator.p.rapidapi.com/getPercentage';
    Map<String, String> headers = {
      'X-Rapidapi-Key': 'cbb785b118mshca1af2cdd30f124p1c7543jsn179040334463',
      'X-Rapidapi-Host': 'love-calculator.p.rapidapi.com',
      'Host': 'love-calculator.p.rapidapi.com',
    };

   
    Map<String, String> queryParams = {
      'sname': 'Maryjoy',
      'fname': 'Daryl', 
    };

   
    String queryString = Uri(queryParameters: queryParams).query;
    String requestUrl = '$apiUrl?$queryString';

   
    var response = await http.get(Uri.parse(requestUrl), headers: headers);

    
    if (response.statusCode == 200) {
     
      var data = jsonDecode(response.body);

     
      String sourceName = data['sname'];
      String targetName = data['fname'];
      String percentage = data['percentage'];
      String result = data['result'];

    
      print('Love percentage between $sourceName and $targetName: $percentage%');
      print('Result: $result');
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}

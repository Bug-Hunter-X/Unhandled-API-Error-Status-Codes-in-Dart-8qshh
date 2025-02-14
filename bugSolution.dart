```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']);
    } else if (response.statusCode == 404) {
      print('Error: Data not found (404)');
    } else if (response.statusCode == 500) {
      print('Error: Server error (500)');
    } else {
      print('Error: Unexpected status code ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; 
  }
}
```
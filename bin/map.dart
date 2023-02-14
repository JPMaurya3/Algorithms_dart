import 'dart:convert';

void main() {
  String jsonString = '{"name": "John Doe", "age": 30, "city": "New York"}';
  Map<String, dynamic> jsonObject = json.decode(jsonString);

  print(jsonObject['name']);
  print(jsonObject['age']);
  print(jsonObject['city']);
}

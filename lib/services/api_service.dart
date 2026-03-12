import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

  static Future<List> getData() async {

    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await http.get(url);

    return jsonDecode(response.body);
  }
}
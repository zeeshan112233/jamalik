import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/My_response.dart';

class Login {
  Future<dynamic> login({
    String phonenumber,
    String password,
  }) async {
    Map<String, dynamic> body = {
      'username': phonenumber,
      'Password': password,
      'grant_type': 'password'
    };

    Map<String, String> requestHeaders = {
      'Accept': 'application/x-www-form-urlencoded',
    };

    final uri = 'http://51.222.107.49/Api/token';

    http.Response response =
        await http.post(uri, body: body, headers: requestHeaders);

    print("my body " + response.body);

    if (response.statusCode == 200) {
      print(" 200 ");

      return json.decode(response.body);
    } else if (response.statusCode == 400) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data!');
    }
  }
}

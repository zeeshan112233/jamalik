import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/My_response.dart';

class Login {
  Future<My_response> login({
    String email = "ar@test.com",
    String password,
    String device_type,
    String token,
    String phonenumber,
  }) async {
    Map<String, dynamic> body = {
      'email': email,
      'password': password,
      'device_type': device_type,
      'token': token
    };

    Map<String, String> requestHeaders = {
      'Accept': 'application/json',
      'X-Requested-With': 'XMLHttpRequest'
    };

    final uri = 'https://reprivateshowing.com/admin/public/api/agent/login';

    http.Response response =
        await http.post(uri, body: body, headers: requestHeaders);
    print(response.body);

    if (response.statusCode == 200 || response.statusCode == 400) {
      return My_response.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}

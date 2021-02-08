import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/My_response.dart';

class Signup {
  Future<dynamic> signup({
    String firstName,
    String lastName,
    String gender,
    String email,
    String phonenumber,
    String password,
    String username,
    String confirmpassword,
  }) async {
    Map<String, dynamic> body = {
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'Gender': gender,
      'PhoneNumber': phonenumber,
      'Password': password,
      'ConfirmPassword': confirmpassword,
      'UserName': username,
    };

    // Map<String, String> requestHeaders = {
    //   'Accept': 'application/json',
    // };

    final uri = 'http://51.222.107.49/Api/api/Account/RegisterAppUser';

    http.Response response = await http.post(
      uri, body: body,
      //  headers: requestHeaders
    );
    print("my body " + response.body);

    if (response.statusCode == 200) {
      print(" 200 ");

      return json.decode(response.body);
    } else if (response.statusCode == 400) {
      return UserSignup.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}

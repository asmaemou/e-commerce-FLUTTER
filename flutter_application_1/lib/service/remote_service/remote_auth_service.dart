import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../const.dart';

class RemoteAuthService {
  var client = http.Client();

  Future<dynamic> signUp({
    required String email,
    required String password,
    required String fullname,
  }) async {
    // var body = {"fullname": fullname, "email": email, "password": password};
    var response = await client.get(
      Uri.parse('$baseUrl/create_user?fullname=$fullname&email=$email&password=$password'),
      // headers: {"Content-Type": "application/json"},
      // body: jsonEncode(body),
    );
    return response;
  }

  Future<dynamic> createProfile({
    required String fullName,
    // required String token,
  }) async {
    var body = {"fullName": fullName};
    var response = await client.post(
      Uri.parse('$baseUrl/api/profile/me'),
      headers: {
        "Content-Type": "application/json",
        // "Authorization": "Bearer $token"
      },
      body: jsonEncode(body),
    );
    return response;
  }

  Future<dynamic> signIn({
    required String email,
    required String password,
  }) async {
    var body = {
      "identifier": email,
      "password": password
    };
    var response = await client.post(
      Uri.parse('$baseUrl/api/auth/local'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(body),
    );
    return response;
  }

  Future<dynamic> getProfile({
    required String token,
  }) async {
    var response = await client.get(
      Uri.parse('$baseUrl/api/profile/me'),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );
    return response;
  }
}

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:aro_api/aro_api.dart';

/// Exception thrown when Login fails.
class LoginFailure implements Exception {}
class SignUpFailure implements Exception {}
class ValidateCodeFailure implements Exception {}
class ValidateEmailFailure implements Exception {}

class AroApiClient {
  AroApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'api.clickandcorrect.fr';
  final http.Client _httpClient;

  /// Login `/auth/login`.
  Future<User> login(String email, String password) async {
    final locationRequest = Uri.https(
      _baseUrl,
      '/auth/login',
    );

    final loginResponse = await _httpClient.post(locationRequest,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{'user': email, 'pass': password}));

    print('status code ${loginResponse.statusCode}');

    if (loginResponse.statusCode != 200) {
      throw LoginFailure();
    }

    final json = jsonDecode(
      loginResponse.body,
    );

    final userJson = json['d'];
    if (userJson.isEmpty) {
      throw LoginFailure();
    }

    print(userJson);
    return User.fromJson(userJson);
  }

  /// SignUp `/student/signup`.
  Future<String> signupstudent(String name, String lastname, String email, String password, String country, String phone, String degree, String language) async {
    final locationRequest = Uri.https(
      _baseUrl,
      '/student/signup',
    );
    print('aqui si');
    final signupResponse = await _httpClient.patch(locationRequest,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{'name': name, 'lastname': lastname,'email': email, 'password': password,'country': country, 'phone': phone,'degree': degree, 'language': language}));

    print('status code ${signupResponse.statusCode}');

    if (signupResponse.statusCode != 200) {
      throw SignUpFailure();
    }

    final json = jsonDecode(
      signupResponse.body,
    );

    final userRegisteredJson = json['d'];
    if (userRegisteredJson.isEmpty) {
      throw SignUpFailure();
    }
    return userRegisteredJson['id'];
  }

  /// SignUp `/teacher/signup`.
  Future<String> signupteacher(String name, String lastname, String email, String password, String country, String phone, String degree, String language) async {
    final locationRequest = Uri.https(
      _baseUrl,
      '/teacher/signup',
    );

    final signupResponse = await _httpClient.put(locationRequest,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{'name': name, 'lastname': lastname,'email': email, 'password': password,'country': country, 'phone': phone,'degree': degree, 'language': language}));

    print('status code ${signupResponse.statusCode}');

    if (signupResponse.statusCode != 200) {
      throw SignUpFailure();
    }

    final json = jsonDecode(
      signupResponse.body,
    );

    final userRegisteredJson = json['d'];
    if (userRegisteredJson.isEmpty) {
      throw SignUpFailure();
    }
    return userRegisteredJson['id'];
  }

  validatorcode(String code,String userId) async {
    final locationRequest = Uri.https(
      _baseUrl,
        '/auth/validateToken',
    );

    final validateCodeResponse = await _httpClient.post(locationRequest,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{'userId':userId ,'code': code}));

    print('status code ${validateCodeResponse.statusCode}');

    if (validateCodeResponse.statusCode != 200) {
      throw ValidateCodeFailure();
    }

    final json = jsonDecode(
      validateCodeResponse.body,
    );

    final validateJson = json['s'];

    if(validateJson == false){
      throw ValidateEmailFailure();
    }
  }

   validatoremail(String userId) async {
    final locationRequest = Uri.https(
      _baseUrl,
      '/auth/validateEmail',
    );

    final validateCodeResponse = await _httpClient.post(locationRequest,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{'userId':userId}));

    print('status code ${validateCodeResponse.statusCode}');

    if (validateCodeResponse.statusCode != 200) {
      throw ValidateEmailFailure();
    }

    final json = jsonDecode(
      validateCodeResponse.body,
    );

    final validateJson = json['s'];

    if(validateJson == false){
      throw ValidateEmailFailure();
    }
  }

}

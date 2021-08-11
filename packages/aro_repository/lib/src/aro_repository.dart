import 'dart:async';

import 'package:aro_api/aro_api.dart';

class WeatherFailure implements Exception {}

class AroRepository {
  AroRepository({AroApiClient? aroApiClient})
      : _aroApiClient = aroApiClient ?? AroApiClient();

  final AroApiClient _aroApiClient;

  Future<User> login(String email, String password) async {
    final user = await _aroApiClient.login(email, password);
    return user;
  }

  Future<String> signup(String name, String lastname, String email, String password, String country, String phone, String degree, String language) async {
    final id = await _aroApiClient.signup(name,lastname,email, password,country,phone,degree,language);
    return id;
  }
}
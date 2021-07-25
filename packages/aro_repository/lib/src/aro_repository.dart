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
}

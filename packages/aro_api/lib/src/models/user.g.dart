// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return $checkedNew('User', json, () {
    final val = User(
      name: $checkedConvert(json, 'name', (v) => v as String),
      lastname: $checkedConvert(json, 'lastname', (v) => v as String),
      email: $checkedConvert(json, 'email', (v) => v as String),
      country: $checkedConvert(json, 'country', (v) => v as String),
      phone: $checkedConvert(json, 'phone', (v) => v as String),
      subjects: $checkedConvert(json, 'subjects',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
      token: $checkedConvert(json, 'token', (v) => v as String),
      profile: $checkedConvert(json, 'profile', (v) => v as String),
    );
    return val;
  });
}

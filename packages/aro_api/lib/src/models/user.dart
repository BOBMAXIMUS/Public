import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    required this.name,
    required this.lastname,
    required this.email,
    required this.country,
    required this.phone,
    //required this.subjects,
    required this.token,
    required this.profile,
    required this.validatedEmail,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String name;
  final String lastname;
  final String email;
  final String country;
  final String phone;
  final String token;
  //final List<String> subjects;
  final bool validatedEmail;
  // puede ser enum luego
  final String profile;
}
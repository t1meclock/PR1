import '../../domain/entity/user_entity.dart';
import 'package:pr1/domain/entity/post_entity.dart';

class User extends UserEntity {
  late int id;
  final String login;
  final String password;
  final int role_id;
  final int post_id;
  User({required this.login, required this.password, required this.role_id, required this.post_id})
      : super(
          login: login,
          password: password,
          role_id: role_id,
          post_id: post_id
        );

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
      'role_id': role_id,
      'post_id': post_id
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      login: json['login'],
      password: json['password'],
      role_id: json['role_id'],
      post_id: json['post_id']
    );
  }
}

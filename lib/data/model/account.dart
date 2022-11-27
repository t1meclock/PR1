import '../../domain/entity/account_entity.dart';

class Account extends AccountEntity {
  late int id;
  final String login;
  final String password;
  final int id_role;

  Account({
    required this.login,
    required this.password,
     required this.id_role,
  }) : super(
          login: login,
          password: password,
          id_role: id_role,
        );

  Map<String, dynamic> toMap() {
    return {'login': login, 'password': password, 'id_role': id_role};
  }

  factory Account.toFromMap(Map<String, dynamic> json) {
    return Account(
      login: json['login'],
      password: json['password'],
       id_role: json['id_role'],
    );
  }
} 
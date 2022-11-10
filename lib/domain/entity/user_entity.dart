class UserEntity {
  late int id;
  final String login;
  final String password;
  final int role_id;
  final int post_id;

  UserEntity(
      {required this.login, required this.password, required this.role_id, required this.post_id});
}

//enum EngineEnum{}
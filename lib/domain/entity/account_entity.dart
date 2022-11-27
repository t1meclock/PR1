class AccountEntity {
  late int id;
  final String login;
  final String password;
  final int id_role;

  AccountEntity(
      {
        required this.login, 
        required this.password, 
        required this.id_role
      }
    );
}
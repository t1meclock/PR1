import '../entity/role_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepositories {
  // Авторизация пользователя

  Future<Either<String,RoleEnum>> signIn(String login, String password);

  // Регистрация пользователя

  Future<Either<String,bool>> singUp(String login, String password);


}
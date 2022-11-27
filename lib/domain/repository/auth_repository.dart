import '../entity/role_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepositories {
  //авторизация пользователя

  Future<Either<String,RoleEnum>> signIn(String login, String password);

  //регистрация пользователя

  Future<Either<String,bool>> singUp(String login, String password);


}
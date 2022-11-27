import 'package:dartz/dartz.dart';
import 'package:pr1/domain/repository/auth_repository.dart';

import '../../../core/usercase/auth.dart';
import '../role_entity.dart';

class Auth implements AuthUserCase<String, AuthParams> {
  final AuthRepositories _authRepository;

  Auth(this._authRepository);

  @override
  Future<Either<String, RoleEnum>> singIn(AuthParams params) {
    return _authRepository.signIn(params.login, params.password);
  }

  @override
  Future<Either<String, bool>> signUp(AuthParams params) {
    return _authRepository.singUp(params.login, params.password);
  }
}

class AuthParams {
  final String login;
  final String password;

  AuthParams({required this.login, required this.password});
}
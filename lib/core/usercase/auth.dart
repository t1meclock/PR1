import '../../domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthUserCase<String, Params> {
  Future<Either<String, RoleEnum>> singIn(Params params);
  
  Future<Either<String, bool>> signUp(Params params);
}
import 'package:sqflite/sqflite.dart';

import '../../common/data_base_request.dart';
import '../../core/db/data_base_helper.dart';
import '../../domain/repository/auth_repository.dart';
import '../../domain/entity/role_entity.dart';
import '../model/account.dart';

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.dataBase;

  String table = DataBaseRequest.tableAccount;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
     try {
      var account = await _db.query(
        table,
        where: 'login = ?',
        whereArgs: [login],
      );
      if (account.isEmpty) {
        return const Left('Такого пользователя нет');
      }
      if (account.first['password'] !=
          md5.convert(utf8.encode(password)).toString()) {
        return const Left('Неверный пароль');
      }
      return Right(RoleEnum.values[(account.first['id_role'] as int) - 1]);
    } on DatabaseException catch (error) {
      return Left(error.result.toString());
    }
  }

  @override
  Future<Either<String, bool>> singUp(String login, String password) async {
    try {
      var account = await _db.query(
        table,
        where: 'login = ?',
        whereArgs: [login],
      );
      if (account.isNotEmpty) {
        return const Left('Логин уже занят');
      }
      _db.insert(
          table,
          Account(
                  login: login,
                  password: md5.convert(utf8.encode(password)).toString(),
                  id_role: RoleEnum.user.id)
              .toMap());
      return const Right(true);
    } on DatabaseException catch (error) {
      return const Left("Ошибка");
    }
  }

}
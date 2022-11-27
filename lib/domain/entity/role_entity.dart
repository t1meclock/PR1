import 'package:flutter/cupertino.dart';

class RoleEntity {
  late int id;
  final String role;

  RoleEntity({required this.role});
}

enum RoleEnum {
  admin(
    id: 1,
    role: 'Администратор',
  ),
  user(
    id: 2,
    role: 'Пользователь',
  ),
  emptyRole(
    id: 0,
    role: 'Роли не существует',
  );

  const RoleEnum({
    required this.id,
    required this.role,
  });

  final int id;
  final String role;
}
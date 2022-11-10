class UserProfileEntity {
  late int id;
  final String surname;
  final String name;
  final String patronymic;
  final String sex;
  UserProfileEntity(
      {required this.surname,
      required this.name,
      required this.patronymic,
      required this.sex,
    });
}

//enum EngineEnum{}
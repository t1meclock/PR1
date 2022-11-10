import 'package:pr1/domain/entity/userprofile_entity.dart';

class UserProfile extends UserProfileEntity {
  late int id;
  final String surname;
  final String name;
  final String patronymic;
  final String sex;
  UserProfile({
    required this.surname,
    required this.name,
    required this.patronymic,
    required this.sex,
  }) : super(
          surname: surname,
          name: name,
          patronymic: patronymic,
          sex: sex,
        );

  Map<String, dynamic> toMap() {
    return {
      'surname': surname,
      'name': name,
      'patronymic': patronymic,
      'sex': sex,
    };
  }

  factory UserProfile.toFromMap(Map<String, dynamic> json) {
    return UserProfile(
      surname: json['surname'],
      name: json['name'],
      patronymic: json['patronymic'],
      sex: json['sex'],
    );
  }
}

import '../../domain/entity/user_entity.dart';
import 'package:pr1/domain/entity/post_entity.dart';

class User extends UserEntity {
  final String name;
  final String surname;
  final int post_id;
  User({required this.name, required this.surname, required this.post_id})
      : super(
          name: name,
          surname: surname,
          post_id: post_id
        );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'post_id': post_id
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      surname: json['surname'],
      post_id: json['post_id']
    );
  }
}

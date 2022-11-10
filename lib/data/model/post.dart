import 'package:pr1/domain/entity/post_entity.dart';

class Post extends PostEntity {
  late int id;
  final String name_post;
  final double salary;
  Post(
      {required this.name_post,
      required this.salary})
      : super(
            name_post: name_post,
            salary: salary);

  Map<String, dynamic> toMap() {
    return {
      'name_post': name_post,
      'salary': salary
    };
  }

  factory Post.toFromMap(Map<String, dynamic> json) {
    return Post(
        name_post: json['name_post'],
        salary: json['salary']);
  }
}


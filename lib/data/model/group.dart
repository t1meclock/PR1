import 'package:pr1/domain/entity/group_entity.dart';

class Group extends GroupEntity {
  late int id;
  final String name_group;
  final String desc_group;
  Group(
      {required this.name_group,
      required this.desc_group})
      : super(
            name_group: name_group,
            desc_group: desc_group);

  Map<String, dynamic> toMap() {
    return {
      'name_group': name_group,
      'desc_group': desc_group
    };
  }

  factory Group.toFromMap(Map<String, dynamic> json) {
    return Group(
        name_group: json['name_group'],
        desc_group: json['desc_group']);
  }
}


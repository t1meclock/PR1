import 'package:pr1/domain/entity/storage_entity.dart';

class Storage extends StorageEntity 
{
  late int id;
  final String name_storage;
  final String number;

  Storage
  (
    {
      required this.name_storage,
      required this.number
    }
    ) : super
    (
      name_storage: name_storage,
      number: number
    );

  Map<String, dynamic> toMap() 
  {
    return 
    {
      'name_storage': name_storage,
      'number': number
    };
  }

  factory Storage.toFromMap(Map<String, dynamic> json) 
  {
    return Storage
    (
      name_storage: json['name_storage'],
      number: json['number']
    );
  }
}


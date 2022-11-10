import 'package:pr1/domain/entity/product_entity.dart';
import 'package:pr1/domain/entity/storage_entity.dart';
import 'package:pr1/domain/entity/group_entity.dart';

class Product extends ProductEntity {
  late int id;
  final String type_product;
  final String name_product;
  final String desc;
  final double amount_product;
  final double size;
  final int group_id;
  final int storage_id;
  Product({
    required this.type_product,
    required this.name_product,
    required this.desc,
    required this.amount_product,
    required this.size,
    required this.group_id,
    required this.storage_id,
  }) : super(
          type_product: type_product,
          name_product: name_product,
          desc: desc,
          amount_product: amount_product,
          size: size,
          group_id: group_id,
          storage_id: storage_id,
        );

  Map<String, dynamic> toMap() {
    return {
      'type_product': type_product,
      'name_product': name_product,
      'desc': desc,
      'amount_product': amount_product,
      'size': size,
      'group_id': group_id,
      'storage_id': storage_id,
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json) {
    return Product(
      type_product: json['type_product'],
      name_product: json['name_product'],
      desc: json['desc'],
      amount_product: json['amount_product'],
      size: json['size'],
      group_id: json['group_id'],
      storage_id: json['storage_id'],
    );
  }
}

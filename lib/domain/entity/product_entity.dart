class ProductEntity {
  late int id;
  final String type_product;
  final String name_product;
  final String desc;
  final double amount_product;
  final double size;
  final int group_id;
  final int storage_id;
  ProductEntity({
    required this.type_product,
    required this.name_product,
    required this.desc,
    required this.amount_product,
    required this.size,
    required this.group_id,
    required this.storage_id,
  });
}

//enum EngineEnum{}
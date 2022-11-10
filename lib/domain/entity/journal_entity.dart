class JournalEntity {
  late int id;
  final double amount;
  final double total;
  final double discount;
  final double retail_price;
  final int user_id;
  JournalEntity(
      {required this.total,
      required this.amount,
      required this.discount,
      required this.retail_price,
      required this.user_id});
}

//enum EngineEnum{}
import 'package:pr1/domain/entity/journal_entity.dart';

class Journal extends JournalEntity {
  late int id;
  final double amount;
  final double total;
  final double discount;
  final double retail_price;
  final int user_id;
  Journal({
    required this.amount,
    required this.total,
    required this.discount,
    required this.retail_price,
    required this.user_id,
  }) : super(
          amount: amount,
          total: total,
          discount: discount,
          retail_price: retail_price,
          user_id: user_id,
        );

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'total': total,
      'discount': discount,
      'retail_price': retail_price,
      'user_id': user_id,
    };
  }

  factory Journal.toFromMap(Map<String, dynamic> json) {
    return Journal(
      amount: json['amount'],
      total: json['total'],
      discount: json['discount'],
      retail_price: json['retail_price'],
      user_id: json['user_id'],
    );
  }
}

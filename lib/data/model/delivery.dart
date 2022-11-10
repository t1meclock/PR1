import 'package:pr1/domain/entity/delivery_entity.dart';

class Delivery extends DeliveryEntity {
  late int id;
  final String date_req;
  final String date_delivery;
  final bool delivery;
  Delivery(
      {required this.date_req,
      required this.date_delivery,
      required this.delivery})
      : super(
            date_req: date_req,
            date_delivery: date_delivery,
            delivery: delivery);

  Map<String, dynamic> toMap() {
    return {
      'date_req': date_req,
      'date_delivery': date_delivery,
      'delivery': delivery
    };
  }

  factory Delivery.toFromMap(Map<String, dynamic> json) {
    return Delivery(
        date_req: json['date_req'],
        date_delivery: json['date_delivery'],
        delivery: json['delivery']);
  }
}


class DeliveryEntity {
  late int id;
  final String date_req;
  final String date_delivery;
  final bool delivery;
  DeliveryEntity(
      {required this.date_req,
      required this.date_delivery,
      required this.delivery});
}

//enum EngineEnum{}
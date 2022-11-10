import 'package:pr1/domain/entity/provider_entity.dart';
import 'package:pr1/domain/entity/delivery_entity.dart';

class Provider extends ProviderEntity {
  late int id;
  final String name_prov;
  final String tin;
  final String kpp;
  final String adress;
  final String email;
  final String contacts;
  final int delivery_id;
  Provider({
    required this.name_prov,
    required this.tin,
    required this.kpp,
    required this.adress,
    required this.email,
    required this.contacts,
    required this.delivery_id,
  }) : super(
          name_prov: name_prov,
          tin: tin,
          kpp: kpp,
          adress: adress,
          email: email,
          contacts: contacts,
          delivery_id: delivery_id,
        );

  Map<String, dynamic> toMap() {
    return {
      'name_prov': name_prov,
      'tin': tin,
      'kpp': kpp,
      'adress': adress,
      'email': email,
      'contacts': contacts,
      'delivery_id': delivery_id
    };
  }

  factory Provider.toFromMap(Map<String, dynamic> json) {
    return Provider(
      name_prov: json['name_prov'],
      tin: json['tin'],
      kpp: json['kpp'],
      adress: json['adress'],
      email: json['email'],
      contacts: json['contacts'],
      delivery_id: json['delivery_id'],
    );
  }
}

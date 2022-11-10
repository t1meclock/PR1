class ProviderEntity {
  late int id;
  final String name_prov;
  final String tin;
  final String kpp;
  final String adress;
  final String email;
  final String contacts;
  final int delivery_id;
  ProviderEntity(
      {required this.name_prov,
      required this.tin,
      required this.kpp,
      required this.adress,
      required this.email,
      required this.contacts,
      required this.delivery_id,
    });
}

//enum EngineEnum{}
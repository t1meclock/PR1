import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:pr1/data/model/user.dart';
import 'package:pr1/data/model/group.dart';
import 'package:pr1/data/model/post.dart';
import 'package:pr1/data/model/product.dart';
import 'package:pr1/data/model/provider.dart';
import 'package:pr1/data/model/storage.dart';
import 'package:pr1/data/model/userprofile.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';

import '../../common/data_base_request.dart';
import '../../data/model/role.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

import '../../data/model/account.dart';
import '../../domain/entity/role_entity.dart';

 class DataBaseHelper{
  static final DataBaseHelper instance = DataBaseHelper._instance();
  DataBaseHelper._instance();
  late final Directory _appDocumentDirectory;
  late final String _pathDb;
  late final Database dataBase;
  int _version = 1 ;



  // get dataBase => null;

  Future<void> init() async{
     _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();

    _pathDb = join(_appDocumentDirectory.path, 'warehouse3.db');

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      sqfliteFfiInit();
      dataBase = await databaseFactoryFfi.openDatabase(
        _pathDb,
        options: OpenDatabaseOptions(
          version: _version,
          onCreate: (db, version) async {
            await onCreateTable(db);
          },
          onUpgrade: (db, oldVersion, newVersion) async {
            await onUpdateTable(db);
          },
        ),
      );
    } else {
      dataBase = await openDatabase(_pathDb, version: _version,
          onCreate: (dataBase, version) async {
        await onCreateTable(dataBase);
      }, onUpgrade: (dataBase, oldVersion, newVersion) async {
        await onUpdateTable(dataBase);
      });
    }
  }


  Future<void> onUpdateTable(Database db) async{
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');
    for(var table in DataBaseRequest.tableList.reversed){
      if(tables.where((element) => element['name'] == table).isNotEmpty){
        await db.execute(DataBaseRequest.deleteTable(table));
      }
      
    }

    for (var element in DataBaseRequest.tableCreateList){
        await db.execute(element);
      }

      await onInitTable(db);

  }


  Future<void> onCreateTable(Database db) async{
      for (var element in DataBaseRequest.tableCreateList){
        await db.execute(element);
      }

      await onInitTable(db);
  }

  Future<void> onInitTable (Database db) async{
    try
    {
      db.insert(DataBaseRequest.tableRole, Role(role:'Администратор').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role:'Пользователь').toMap());

      db.insert(DataBaseRequest.tablePost, Post(name_post: 'Продавец', salary: 25000).toMap());
      db.insert(DataBaseRequest.tablePost, Post(name_post: 'Кассир', salary: 20000).toMap());

      db.insert(DataBaseRequest.tableStorage, Storage(name_storage: '1А729Р', number: '1').toMap());
      
      db.insert(DataBaseRequest.tableUsers, User(name: 'Абоба', surname: 'Абобович', post_id: 1).toMap());
      db.insert(DataBaseRequest.tableUsers, User(name: 'fdsfds', surname: 'sdggdsd', post_id: 2).toMap());

      db.insert(DataBaseRequest.tableGroup, Group(name_group: 'Принтеры', desc_group: 'Лазерные принтеры. Довольно распространенный тип. В качестве краски такие устройства используют мелкий порошок - тонер. Такие принтеры могут печатать на любых типах бумаги, включая дизайнерский картон, самоклеющуюся и прозрачную пленку. Оттиски, сделанные лазерными принтерами, отличаются высоким качеством и долговечностью. Тонер не выгорает на солнце и не смывается водой. Идеально такие принтеры подходят для печати мелкого текста и тонких линий, а вот фотографии получаются неестественными и «плоскими». Еще один положительный момент - это скорость печати. Здесь с лазерниками не сравнится ничто. Однако стоят такие аппараты, как, впрочем, и их обслуживание, довольно дорого, поэтому рядовым пользователям такая роскошь вряд ли будет по карману.').toMap());
      db.insert(DataBaseRequest.tableGroup, Group(name_group: 'Видеокарты', desc_group: 'Современная видеокарта — графический процессор, который умеет быстро обрабатывать графику, справляется с моделированием, работой с искусственным интеллектом и компьютерным зрением, а также другими задачами. Компьютер с современной игровой видеокартой — универсальная платформа для работы, развлечений и обучения.').toMap());

      db.insert(DataBaseRequest.tableProduct, Product(name_product: 'Palit GeForce RTX 3070 Ti GameRock OC', type_product: 'Видеокарта', desc: 'Видеокарта Palit GeForce RTX 3070 Ti GameRock OC [NED307TT19P2-1047G] создана специально для требовательных геймеров, которые предпочитают собирать свою игровую машину самостоятельно. Модель имеет графический процессор GeForce RTX 3070 Ti с микроархитектурой NVIDIA Ampere. Активное воздушное охлаждение модели представлено 3 осевыми вентиляторами.', amount_product: 150, size: 304, group_id: 2, storage_id: 1).toMap());

      //db.insert(DataBaseRequest.tableProvider, Provider(name_prov: 'Автомат', tin: '3664069397', kpp: '770201001', adress: 'г. Москва, вн.тер.г. муниципальный округ Крылатское, б-р Осенний, д. 10, к. 1, кв. 418', email: 'kchekalova00@mail.ru', contacts: '+79153347812', delivery_id: 1).toMap());

      db.insert(DataBaseRequest.tableUserProfile, UserProfile(surname: 'Сейджева', name: 'Сейдж', patronymic: 'Сейджевна', sex: 'Женский').toMap());
      db.insert(DataBaseRequest.tableUserProfile, UserProfile(surname: 'Чекалова', name: 'Ксения', patronymic: 'Сергеевна', sex: 'Женский').toMap());
      db.insert(DataBaseRequest.tableAccount, Account(login: 'aboba2411', password: md5.convert(utf8.encode('aboba2411')).toString(), id_role: RoleEnum.admin.id).toMap());
      db.insert(DataBaseRequest.tableAccount, Account(login: 'aboba2511', password: md5.convert(utf8.encode('aboba2511')).toString(), id_role: RoleEnum.user.id).toMap());
    }
     on DatabaseException catch(e)
    {

    }
  }
}
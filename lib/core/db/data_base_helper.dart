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

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();
  DataBaseHelper._instance();

  late final Directory _appDocumentDirectory;
  late final String _pathDB;
  late final Database database;
  final int _version = 1;

  Future<void> init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    _pathDB = join(_appDocumentDirectory.path, 'warehouse.db');
    

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {

    sqfliteFfiInit();
       var db = await databaseFactoryFfi.openDatabase(_pathDB, options: OpenDatabaseOptions(
        version: _version,
        onUpgrade: (db,oldVersion,newVersion)=> onUpdateTable(db),
        
        onCreate: (db, version) async {
        await onCreateTable(db);
      }
        
        ));
       
    } 
    else {
      database = await openDatabase(_pathDB, version: _version,
      
      onUpgrade:(db,oldVersion,newVersion)=> onUpdateTable(db),
    
          onCreate: (db, version) async {
        await onCreateTable(db);
      });
    }
    
  }

  Future<void> onCreateTable(Database db) async {

    for (var i=0; i< DataBaseRequest.tableList.length;i++)
    {
      await db.execute(DataBaseRequest.tableCreateList[i]);
    }
    db.execute('PRAGMA foreign_keys=on');
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
      
      db.insert(DataBaseRequest.tableUsers, User(login: 'aboba', password: 'aboba', role_id: 1, post_id: 1).toMap());
      db.insert(DataBaseRequest.tableUsers, User(login: 'blup blup', password: 'blup', role_id: 2, post_id: 1).toMap());

      db.insert(DataBaseRequest.tableGroup, Group(name_group: 'Принтеры', desc_group: 'Лазерные принтеры. Довольно распространенный тип. В качестве краски такие устройства используют мелкий порошок - тонер. Такие принтеры могут печатать на любых типах бумаги, включая дизайнерский картон, самоклеющуюся и прозрачную пленку. Оттиски, сделанные лазерными принтерами, отличаются высоким качеством и долговечностью. Тонер не выгорает на солнце и не смывается водой. Идеально такие принтеры подходят для печати мелкого текста и тонких линий, а вот фотографии получаются неестественными и «плоскими». Еще один положительный момент - это скорость печати. Здесь с лазерниками не сравнится ничто. Однако стоят такие аппараты, как, впрочем, и их обслуживание, довольно дорого, поэтому рядовым пользователям такая роскошь вряд ли будет по карману.').toMap());
      db.insert(DataBaseRequest.tableGroup, Group(name_group: 'Видеокарты', desc_group: 'Современная видеокарта — графический процессор, который умеет быстро обрабатывать графику, справляется с моделированием, работой с искусственным интеллектом и компьютерным зрением, а также другими задачами. Компьютер с современной игровой видеокартой — универсальная платформа для работы, развлечений и обучения.').toMap());

      db.insert(DataBaseRequest.tableProduct, Product(name_product: 'Palit GeForce RTX 3070 Ti GameRock OC', type_product: 'Видеокарта', desc: 'Видеокарта Palit GeForce RTX 3070 Ti GameRock OC [NED307TT19P2-1047G] создана специально для требовательных геймеров, которые предпочитают собирать свою игровую машину самостоятельно. Модель имеет графический процессор GeForce RTX 3070 Ti с микроархитектурой NVIDIA Ampere. Активное воздушное охлаждение модели представлено 3 осевыми вентиляторами.', amount_product: 150, size: 304, group_id: 2, storage_id: 1).toMap());

      //db.insert(DataBaseRequest.tableProvider, Provider(name_prov: 'Автомат', tin: '3664069397', kpp: '770201001', adress: 'г. Москва, вн.тер.г. муниципальный округ Крылатское, б-р Осенний, д. 10, к. 1, кв. 418', email: 'kchekalova00@mail.ru', contacts: '+79153347812', delivery_id: 1).toMap());

      db.insert(DataBaseRequest.tableUserProfile, UserProfile(surname: 'Сейджева', name: 'Сейдж', patronymic: 'Сейджевна', sex: 'Женский').toMap());
      db.insert(DataBaseRequest.tableUserProfile, UserProfile(surname: 'Чекалова', name: 'Ксения', patronymic: 'Сергеевна', sex: 'Женский').toMap());
    }
     on DatabaseException catch(e)
    {

    }
  }
  
Future<void>  onUpdateTable(Database db)async {

var tables=await db.rawQuery('Select name FROM sqlite_master');
for (var table in DataBaseRequest.tableList)
{
  if (tables.contains(table))
  {
    await db.execute(DataBaseRequest.deleteTable(table));
  }
}
for (var i=0; i< DataBaseRequest.tableList.length;i++)
    {
      await db.execute(DataBaseRequest.tableCreateList[i]);
    }
  }
}
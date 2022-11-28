abstract class DataBaseRequest {
  /// Таблица Роли
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';
  static const String tableAccount = 'Account';
  static const String tablePost = 'Post';
  static const String tableUsers = 'Users';
  static const String tableDelivery = 'Delivery';
  static const String tableJournal = 'Journal';
  static const String tableGroup = 'Group';
  static const String tableStorage = 'Storage';
  static const String tableProduct = 'Product';
  static const String tableProvider = 'Provider';
  static const String tableUserProfile = 'UserProfile';

  static const List<String> tableList = [
    tableRole,
    tablePost,
    tableUsers,
    tableAccount,
    tableDelivery,
    tableJournal,
    tableGroup,
    tableStorage,
    tableProduct,
    tableProvider,
    tableUserProfile,
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTablePost,
    _createTableAccount,
    _createTableUsers,
    _createTableDelivery,
    _createTableJournal,
    _createTableGroup,
    _createTableStorage,
    _createTableProduct,
    _createTableProvider,
    _createTableUserProfile,
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER, "role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableAccount =
      'CREATE TABLE "$tableAccount" ("id" INTEGER, "login" TEXT NOT NULL UNIQUE, "password" TEXT NOT NULL, "id_role" INTEGER NOT NULL, FOREIGN KEY("id_role") REFERENCES "Role"("id"), PRIMARY KEY("id"))';

  static const String _createTablePost =
      'CREATE TABLE "$tablePost" ("id" INTEGER, "name_post" TEXT NOT NULL, "salary" DOUBLE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("name" TEXT NOT NULL UNIQUE, "surname" TEXT NOT NULL, "post_id" INTEGER, FOREIGN KEY("post_id") REFERENCES "Post"("id") on delete cascade)';

  static const String _createTableDelivery =
      'CREATE TABLE "$tableDelivery" ("id" INTEGER, "date_req" TEXT NOT NULL, "date_delivery" TEXT NOT NULL, "delivery" BIT, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableJournal =
      'CREATE TABLE "$tableJournal" ("id" INTEGER, "amount" DOUBLE, "total" DOUBLE, "discount" DOUBLE, "retail_price" DOUBLE, "user_id" INTEGER, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("user_id") REFERENCES "Users"("id") on delete cascade)';

  static const String _createTableGroup =
      'CREATE TABLE "$tableGroup" ("id" INTEGER, "name_group" TEXT NOT NULL UNIQUE, "desc_group" TEXT NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableStorage =
      'CREATE TABLE "$tableStorage" ("id" INTEGER, "name_storage" TEXT NOT NULL UNIQUE, "number" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct" ("id" INTEGER, "type_product" TEXT NOT NULL, "name_product" TEXT NOT NULL, "desc" TEXT NOT NULL, "amount_product" DOUBLE, "size" DOUBLE, "group_id" INTEGER, "storage_id" INTEGER, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("group_id") REFERENCES "Group"("id") on delete cascade, FOREIGN KEY("storage_id") REFERENCES "Storage"("id") on delete cascade)';
  
  static const String _createTableProvider =
      'CREATE TABLE "$tableProvider" ("id" INTEGER, "name_prov" TEXT NOT NULL, "tin" TEXT NOT NULL, "kpp" TEXT NOT NULL, "adress" TEXT NOT NULL, "email" TEXT NOT NULL, "contacts" TEXT NOT NULL, "delivery_id" INTEGER, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("delivery_id") REFERENCES "Delivery"("id") on delete cascade)';

  static const String _createTableUserProfile =
      'CREATE TABLE "$tableUserProfile" ("id" INTEGER, "surname" TEXT NOT NULL, "name" TEXT NOT NULL, "patronymic" TEXT NULL, "sex" TEXT NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static String deleteTable(String table) => 'DROP TABLE IF EXIST $table';
}

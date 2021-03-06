import 'package:OOSE/ORM/ORM.dart';

class DB{
  static ORM _orm;

  static void Initialize() async{
    _orm = new ORM(
        new MysqlAdapter(),
        "OOSE-db",
        3306,
        "OOSE",
        "root",
        "123456",
        true
    );

    await _orm.Connect();
  }

  static ORM get orm => _orm;
}
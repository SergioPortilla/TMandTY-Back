import 'package:tmandtyback/Properties/appConfiguration.dart';
import 'package:mysql1/mysql1.dart';
import 'package:mysql1/src/single_connection.dart';
import 'package:tmandtyback/tmandtyback.dart';

//Future<MySqlConnection> conectionApp() async => await MySqlConnection.connect(DatabaseAccess());

//ConnectionSettings DatabaseAccess() {
//  var config = AppConfiguration();
//	var database = config.database["db1"];
//
//  return ConnectionSettings(
//    host: database.host,
//    port: database.port,
//    user: database.username,
//    password: database.password,
//    db: database.databaseName,
//    );
//}

//class MyChannel{
//  ManagedContext context;
//
//  Future prepare() async {
//    final config = AppConfiguration();
//    final database = config.database["db2"];
//
//    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
//    final store = PostgreSQLPersistentStore.fromConnectionInfo(
//        database.username,
//        database.password,
//        database.host,
//        database.port,
//        database.databaseName);
//    context = ManagedContext(dataModel, store);
//  }
//}
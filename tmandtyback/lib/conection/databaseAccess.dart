import 'package:tmandtyback/Properties/appConfiguration.dart';
import 'package:mysql1/mysql1.dart';
import 'package:mysql1/src/single_connection.dart';

//Future<MySqlConnection> conectionApp() async => await MySqlConnection.connect(DatabaseAccess());

ConnectionSettings DatabaseAccess() {
  var config = AppConfiguration();
	var database = config.database["db1"];

  return ConnectionSettings(
    host: database.host, 
    port: database.port, 
    user: database.username, 
    password: database.password, 
    db: database.databaseName,
    );
}


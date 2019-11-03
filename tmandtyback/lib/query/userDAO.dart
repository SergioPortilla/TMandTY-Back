import 'package:mysql1/mysql1.dart';
import 'package:tmandtyback/conection/databaseAccess.dart';
import 'package:tmandtyback/model/user.dart';

Future userDao() async {

  var conn = await MySqlConnection.connect(DatabaseAccess());
  
  var userId = 'sportilla';
  var result = await conn.query('select * from usuario where Login = ?', [userId]);

  print('Name: ${result}');

  //var createUser(User userCreation) =>
  //    conn.query('INSERT INTO usuario 
  //        (Login, Contrasena, Correo, Nombre, UrlImage, TipoUsuario)
  //        VALUES(?, ?, ?, ?, ?, ?);',
  //      ['Bob', 'bob@bob.com', 25]);
  //  return "";
    
  //}
    
}
//Future<String> conn(User userCreation) async =>
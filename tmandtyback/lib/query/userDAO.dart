import 'package:mysql1/mysql1.dart';
import 'package:tmandtyback/conection/databaseAccess.dart';
import 'package:tmandtyback/model/user.dart';

class UserDao {

  Future<String> createUser(User cUser) async {
    String success;
    final conn = await MySqlConnection.connect(DatabaseAccess());
    final createUser = conn.query(
        'INSERT INTO usuario '
        '(Login, Contrasena, Correo, Nombre, UrlImage, TipoUsuario) '
        'VALUES(?, ?, ?, ?, ?, ?);',
        [
          cUser.user,
          cUser.password,
          cUser.mail,
          cUser.fullName,
          cUser.imageUrl,
          cUser.userType
        ]
    );
    await createUser.then((_) => {
      success = "Usuario Creado"
    },).catchError((e) {
      success = "Error al crear usuario ${e.toString()}";
    });
    await conn.close();
    return success;
  }

  Future<String> searchByLogin(String login) async {
    final conn = await MySqlConnection.connect(DatabaseAccess());
    final result = conn.query('select * from usuario where Login = ?', [login]);
    await result.catchError((e) {
       print("Error al crear usuario ${e.toString()}");
    });
    await conn.close();
    return '${result}';
  }

}
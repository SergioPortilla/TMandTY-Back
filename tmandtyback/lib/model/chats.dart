import 'package:aqueduct/aqueduct.dart';
import 'package:tmandtyback/model/idiom.dart';
import 'package:tmandtyback/model/user.dart';
import 'package:tmandtyback/tmandtyback.dart';

class Chat extends ManagedObject<_Chat> implements _Chat {

  @override
  void willUpdate() {
  }

  @override
  void willInsert() {
  }
}

class _Chat extends Serializable {
  @primaryKey
  User idUser;
  @primaryKey
  User idinstructor;
  @primaryKey
  Idiom idIdiom;
  String chatType;
  @Column(unique: true)
  int count;
  String messageType;
  String message;

  @override
  Map<String, dynamic> asMap() =>
      {
        "IdUsuario": idUser,
        "IdDocente": idinstructor,
        "IdIdioma": idIdiom,
        "TipoChat": chatType,
        "ContadorChat": count,
        "TipoMensaje": messageType,
        "Mensaje": message
      };

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }
}
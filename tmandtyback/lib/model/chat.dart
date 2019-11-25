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

class idChat {

}
@Table(name: "Chat")
class _Chat extends Serializable {
  @Relate(#chatLearn, isRequired: true, onDelete: DeleteRule.cascade)
  User idUser;

  @Relate(#chatTeach, isRequired: true, onDelete: DeleteRule.cascade)
  User idinstructor;

  @Relate(#chatIdiom, isRequired: true, onDelete: DeleteRule.cascade)
  Idiom idIdiom;

  @Column(primaryKey: true, nullable: true)
  int count;

  @Column(nullable: false)
  String chatType;

  String messageType;

  String message;


  @override
  Map<String, dynamic> asMap() => {
    "idUser":       idUser,
    "idinstructor": idinstructor,
    "idIdiom":      idIdiom,
    "chatType":     chatType,
    "count":        count,
    "messageType":  messageType,
    "message":      message
  };

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }

}
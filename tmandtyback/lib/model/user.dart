import 'package:tmandtyback/model/chat.dart';
import 'package:tmandtyback/model/userType.dart';
import 'package:tmandtyback/tmandtyback.dart';

class User extends ManagedObject<_User> implements _User {

  @override
  void willUpdate() {
  }

  @override
  void willInsert() {
  }
}

@Table(name: "Usuario")
class _User extends Serializable {
  @Column(primaryKey: true, autoincrement: true, unique: true)
  int id;

  @Column(unique: true, nullable: false )
  String userName;

  String password;

  @Column(nullable: false )
  String mail;

  @Column(nullable: false )
  String fullName;

  @Column(unique: true )
  String imageUrl;

  @Relate(#userType)
  UserType userType;

  Chat chatTeach;
  Chat chatLearn;

  @override
  Map<String, dynamic> asMap() => {
    "id":       id,
    "userName": userName,
    "password": password,
    "mail":     mail,
    "fullName": fullName,
    "imageUrl": imageUrl,
    "userType": userType
  };

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }

}
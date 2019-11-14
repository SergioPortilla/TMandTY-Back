import 'dart:convert';
import 'package:tmandtyback/model/userType.dart';
import 'package:tmandtyback/tmandtyback.dart';

//User userFromJson(String jsonUser) => User.fromJson(json.decode(jsonUser));
//
//@Table(name: "Usuario")
//class User {
//
//  final int id;
//  final String user;
//  final String password;
//  final String mail;
//  final String fullName;
//  final String imageUrl;
//  final UserType userType;
//
//  //Constructor del Usuario
//  User({this.id, this.user, this.password, this.mail, this.fullName, this.imageUrl, this.userType});
//
//  @override
//  String toString() => json.encode(toJson());
//
//  factory User.fromJson(var json) => User(
//    id:       json["id"] as int,
//    user:     json["Login"] as String,
//    password: json["Contrasena"] as String,
//    mail:     json["Correo"] as String,
//    fullName: json["Nombre"] as String,
//    imageUrl: json["UrlImage"] as String,
//    userType: UserType.fromJson(json["TipoUsuario"])
//  );
//
//  Map<String, dynamic> toJson() => {
//    "id":         id,
//    "Login":      user,
//    "Contrasena": password,
//    "Correo":     mail,
//    "Nombre":     fullName,
//    "UrlImage":   imageUrl,
//    "TipoUsuario":userType
//  };
//
//}

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
  @Column(primaryKey: true, indexed: true)
  int id;

  @Column(unique: true, nullable: false )
  String user;

  @Column(defaultValue: 'password')
  String password;

  @Column(nullable: false )
  String mail;

  @Column(nullable: false )
  String fullName;

  @Column(unique: true, nullable: false )
  String imageUrl;

//  @Relate(#idTypeUsuer, isRequired: true, onDelete: DeleteRule.cascade)
//  UserType userType;
  String userType;

  @override
  Map<String, dynamic> asMap() => {
    "id":         id,
    "Login":      user,
    "Contrasena": password,
    "Correo":     mail,
    "Nombre":     fullName,
    "UrlImage":   imageUrl,
    "TipoUsuario":userType
  };

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }

}
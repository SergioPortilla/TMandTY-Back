import 'dart:convert';

import 'package:tmandtyback/tmandtyback.dart';

//UserType userTypeFromJson(String jsonUserType) => UserType.fromJson(json.decode(jsonUserType));
//
//
//class UserType{
//  final int idTypeUsuer;
//  final String nameTypeUser;
//
//  //Constructor del tipo de usuario
//  UserType({this.idTypeUsuer, this.nameTypeUser});
//
//  String toString() => json.encode(toJson());
//
//  factory UserType.fromJson(var json) => UserType(
//      idTypeUsuer:  json["Id"] as int,
//      nameTypeUser: json["NombreTipoUsuario"] as String
//  );
//
//  Map<String, dynamic> toJson() => {
//    "id":               idTypeUsuer,
//    "NombreTipoUsuario":nameTypeUser
//  };
//}


class UserType extends ManagedObject<_UserType> implements _UserType {

  @override
  void willUpdate() {
  }

  @override
  void willInsert() {
  }
}

@Table(name: "TipoUsuario")
class _UserType extends Serializable {
  @primaryKey
  int idTypeUsuer;

  @Column(unique: true, nullable: false )
  String nameTypeUser;

  @override
  Map<String, dynamic> asMap() => {
    "id":               idTypeUsuer,
    "NombreTipoUsuario":nameTypeUser
  };

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }

}
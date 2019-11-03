import 'dart:convert';

import 'package:tmandtyback/tmandtyback.dart';

UserType userTypeFromJson(String jsonUserType) => UserType.fromJson(json.decode(jsonUserType));

@Table(name: "TipoUsuario")
class UserType{
  final int id;
  final String nameTypeUser;

  //Constructor del tipo de usuario
  UserType({this.id, this.nameTypeUser});

  String toString() => json.encode(toJson());

  factory UserType.fromJson(var json) => UserType(
    id:           json["Id"] as int,
    nameTypeUser: json["NombreTipoUsuario"] as String
  );

  Map<String, dynamic> toJson() => {
    "id":               id,
    "NombreTipoUsuario":nameTypeUser    
  };
}
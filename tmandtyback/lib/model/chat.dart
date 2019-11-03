import 'dart:convert';
import 'package:tmandtyback/model/user.dart';
import 'package:tmandtyback/model/idiom.dart';
import 'package:tmandtyback/tmandtyback.dart';

Chat chatFromJson(String jsonChat) => Chat.fromJson(json.decode(jsonChat));

@Table(name: "chat")
class Chat{
  
  @primaryKey
  final User idUser;
  final User idinstructor;
  final Idiom idIdiom;
  final String chatType;
  final int count;
  final String messageType;
  final String message;

  //Constructor del chat
  Chat({this.idUser,this.idinstructor, this.idIdiom, this.chatType, this.count, this.messageType, this.message});

  @override
  String toString() => json.encode(toJson());

  factory Chat.fromJson(var json) => Chat(
    idUser:       User.fromJson(json["IdUsuario"]),
    idinstructor: User.fromJson(json["IdDocente"]),
    idIdiom:      Idiom.fromJson(json["IdIdioma"]),
    chatType:     json["TipoChat"] as String,
    count:        json["ContadorChat"] as int,
    messageType:  json["TipoMensaje"] as String,
    message:      json["Mensaje"] as String
  );

  Map<String, dynamic> toJson() => {
    "IdUsuario":    idUser,
    "IdDocente":    idinstructor,
    "IdIdioma":     idIdiom,
    "TipoChat":     chatType,
    "ContadorChat": count,
    "TipoMensaje":  messageType,
    "Mensaje":      message
  };

}
////import 'dart:convert';
////import 'package:tmandtyback/model/user.dart';
////import 'package:tmandtyback/tmandtyback.dart';
////
////Subscription subscriptionFromJson(String subscriptionJson) => Subscription.fromJson(json.decode(subscriptionJson));
////
////@Table(name: "Suscripcion")
////class Subscription {
////
////  final int id;
////  final DateTime dateBegin;
////  final DateTime dateEnds;
////  final User idUser;
////  final int numberDays;
////
////  //Constructor de la suscrpicion
////  Subscription({this.id, this.dateBegin, this.dateEnds, this.idUser, this.numberDays});
////
////  @override
////  String toString() => json.encode(toJson());
////
////  factory Subscription.fromJson(var json) => Subscription(
////    id:         json["Id"] as int,
////    dateBegin:  json["FechaInicio"] as DateTime,
////    dateEnds:   json["FechaFin"] as DateTime,
//import 'package:tmandtyback/model/user.dart';
//import 'package:tmandtyback/tmandtyback.dart';
//
//////    idUser:     User.fromJson(json["IdUsuario"]),
////    numberDays: json["cantidadDias"] as int
////  );
////
////  Map<String, dynamic> toJson() => {
////    "Id":           id,
////    "FechaInicio":  dateBegin,
////    "FechaFin":     dateEnds,
////    "IdUsuario":    idUser,
////    "cantidadDias": numberDays
////  };
////
////}
//
//
//class Subscription extends ManagedObject<_Subscription> implements _Subscription {
//
//  @override
//  void willUpdate() {
//  }
//
//  @override
//  void willInsert() {
//  }
//}
//
//@Table(name: "Suscripcion")
//class _Subscription extends Serializable {
//  @Column(primaryKey: true, autoincrement: true, unique: true)
//  int idSuscription;
//
//  @Column(nullable: false )
//  DateTime dateBegin;
//
//  @Column(nullable: false )
//  DateTime dateEnds;
//
//  @Relate(#fgffff)
//  User idUser;
//
//  @Column(nullable: false )
//  int numberDays;
//
//  @override
//  Map<String, dynamic> asMap() => {
//    "idSuscription":idSuscription,
//    "dateBegin":    dateBegin,
//    "dateEnds":     dateEnds,
//    "idUser":       idUser,
//    "numberDays":   numberDays
//  };
//
//  @override
//  void readFromMap(Map<String, dynamic> object) {
//    // TODO: implement readFromMap
//  }
//
//}
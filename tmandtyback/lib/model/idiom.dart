import 'dart:convert';
import 'package:tmandtyback/tmandtyback.dart';

Idiom IdiomFromJson(String jsonIdiom) => Idiom.fromJson(json.decode(jsonIdiom));

@Table(name: "Idioma")
class Idiom {
  @primaryKey
  final int id;
  @Column(unique: true)
  final String name;

  final String description;

  //Constructor del idioma
  Idiom({this.id, this.name, this.description});

  @override
  String toString() => json.encode(toJson());

  factory Idiom.fromJson(var json) => Idiom(
    id:           json["id"] as int,
    name:         json["nombre"] as String,
    description:  json["descripcion"] as String
  );

  Map<String, dynamic> toJson() => {
    "id":         id,
    "nombre":      name,
    "descripcion": description,
  };
  
}
import 'package:tmandtyback/model/chat.dart';

import '../tmandtyback.dart';

class Idiom extends ManagedObject<_Idiom> implements _Idiom {

  @override
  void willUpdate() {
  }

  @override
  void willInsert() {
  }
}

@Table(name: "Idioma")
class _Idiom extends Serializable {
  @Column(primaryKey: true, autoincrement: true, unique: true)
  int idIdiom;

  @Column(unique: true)
  String name;

  @Column(unique: true)
  String flag;

  Chat chatIdiom;

  @override
  Map<String, dynamic> asMap() => {
    "idIdiom": idIdiom,
    "name":    name,
    "flag":    flag
  };

  @override
  void readFromMap(Map<String, dynamic> object) {
    // TODO: implement readFromMap
  }

}
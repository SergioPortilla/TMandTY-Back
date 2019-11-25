import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration1 extends Migration { 
  @override
  Future upgrade() async {
    database.createTable(
      SchemaTable("Usuario",
        [
          SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: true),
          SchemaColumn("userName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),
          SchemaColumn("password", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),
          SchemaColumn("mail", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),
          SchemaColumn("fullName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),
          SchemaColumn("imageUrl", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)
        ]
      )
    );
    database.createTable(
      SchemaTable("TipoUsuario",
        [
          SchemaColumn("idTypeUsuer", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
          SchemaColumn("nameTypeUser", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)
        ]
      )
    );
    database.addColumn("Usuario",
      SchemaColumn.relationship("userType", ManagedPropertyType.bigInteger, relatedTableName: "TipoUsuario", relatedColumnName: "idTypeUsuer", rule: DeleteRule.nullify, isNullable: true, isUnique: true)
    );
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    final List<Map> typeUsers = [
      {
        "idTypeUsuer": 1,
        "nameTypeUser": "Docente"
      },
      {
        "idTypeUsuer": 2,
        "nameTypeUser": "Estudiante"
      }
    ];
    final Map Users =
    {
      "id": 121,
      "userName": "weewwe",
      "password": "Wss&wewe()",
      "mail": "we",
      "fullName": "niqewqcolas",
      "imageUrl": "c:/app/imagenadmin2.jpg",
      "TipoUsuario": 1
    };
    for (final typeUser in typeUsers) {
      await database.store.execute('INSERT INTO TipoUsuario (idTypeUsuer, nameTypeUser) VALUES (@idTypeUsuer, @nameTypeUser)',
          substitutionValues: {
            'idTypeUsuer': typeUser['idTypeUsuer'],
            'nameTypeUser': typeUser['nameTypeUser']
          }
      );
    }
//    await database.store.execute('INSERT INTO _User () VALUES');

  }
}
    
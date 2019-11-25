import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration2 extends Migration { 
  @override
  Future upgrade() async {
    database.createTable(
        SchemaTable("Chat",
            [
              SchemaColumn("count", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: false, isIndexed: false, isNullable: true, isUnique: false),
              SchemaColumn("chatType", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),
              SchemaColumn("messageType", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),
              SchemaColumn("message", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false)
            ]
        )
    );
		database.createTable(
        SchemaTable("Idioma",
            [
              SchemaColumn("idIdiom", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: true),
              SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),
              SchemaColumn("flag", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)
            ]
        )
    );
		database.addColumn("Chat",
        SchemaColumn.relationship("idUser", ManagedPropertyType.integer, relatedTableName: "Usuario", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: false, isUnique: true)
    );
		database.addColumn("Chat",
        SchemaColumn.relationship("idinstructor", ManagedPropertyType.integer, relatedTableName: "Usuario", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: false, isUnique: true)
    );
		database.addColumn("Chat",
        SchemaColumn.relationship("idIdiom", ManagedPropertyType.integer, relatedTableName: "Idioma", relatedColumnName: "idIdiom", rule: DeleteRule.cascade, isNullable: false, isUnique: true)
    );
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    final List<Map> flags = [
      {
        "name": 'Ingles',
        "flag": 'C://users/images/imagen1.jpg'
      },
      {
        "name": 'Frances',
        "flag": 'C://users/images/imagen2.jpg'
      },
      {
        "name": 'Aleman',
        "flag": 'C://users/images/imagen3.jpg'
      },
      {
        "name": 'Japones',
        "flag": 'C://users/images/imagen4.jpg'
      },
      {
        "name": 'Ruso',
        "flag": 'C://users/images/imagen5.jpg'
      },
      {
        "name": 'Italiano',
        "flag": 'C://users/images/imagen6.jpg'
      },
    ];
    for (final flag in flags) {
      await database.store.execute('INSERT INTO Idioma (name, flag) VALUES (@name, @flag)',
          substitutionValues: {
            'name': flag['name'],
            'flag': flag['flag']
          }
      );
    }
  }
}
    
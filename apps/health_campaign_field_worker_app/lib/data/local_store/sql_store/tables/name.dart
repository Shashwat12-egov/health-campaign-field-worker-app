// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';


class Name extends Table {
  TextColumn get id => text().nullable()();
  TextColumn get individualClientReferenceId => text().nullable()();
  TextColumn get givenName => text().nullable()();
  TextColumn get familyName => text().nullable()();
  TextColumn get otherNames => text().nullable()();
  TextColumn get tenantId => text().nullable()();
  TextColumn get createdBy => text()();
  BoolColumn get isDeleted => boolean().nullable()();
  IntColumn get rowVersion => integer().nullable()();
  IntColumn get createdAt => integer()();
  

  @override
  Set<Column> get primaryKey => { individualClientReferenceId, createdBy,  };
}
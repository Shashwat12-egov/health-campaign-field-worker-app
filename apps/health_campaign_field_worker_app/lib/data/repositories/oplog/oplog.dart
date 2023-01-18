import 'dart:async';

import 'package:isar/isar.dart';

import '../../../models/data_model.dart';
import '../../local_store/no_sql/no_sql_store.dart';

abstract class OpLogManager<T extends DataModel> {
  final Isar isar;

  const OpLogManager(this.isar);

  FutureOr<void> createEntry(
    OpLogEntry<T> entry,
    DataModelType type,
  ) async =>
      await isar.writeTxn(() async => await isar.opLogs.put(
            OpLog<T>()
              ..operation = entry.operation
              ..isSynced = false
              ..entityType = type
              ..entityString = entry.entity.toJson(),
          ));

  FutureOr<List<OpLogEntry<T>>> getPendingSyncedEntries(
    DataModelType type,
  ) async {
    final entries = await isar.opLogs
        .filter()
        .isSyncedEqualTo(false)
        .entityTypeEqualTo(type)
        .findAll();

    return entries
        .map((e) => OpLogEntry<T>(
              Mapper.fromJson<T>(e.entityString),
              e.operation,
            ))
        .toList();
  }
}

class IndividualOpLogManager extends OpLogManager<IndividualModel> {
  const IndividualOpLogManager(super.isar);
}

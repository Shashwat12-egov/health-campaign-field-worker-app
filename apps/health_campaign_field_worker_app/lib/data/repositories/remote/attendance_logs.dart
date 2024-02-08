// Generated using mason. Do not modify by hand

import 'dart:async';

import 'package:attendance_management/models/attendance_log.dart';
import 'package:attendance_management/models/attendance_register.mapper.g.dart'
    as att;
import 'package:dio/dio.dart';

import '../../../models/data_model.dart';
import '../../../utils/constants.dart';
import '../../../utils/environment_config.dart';
import '../../data_repository.dart';

class AttendanceLogRemoteRepository extends RemoteRepository<
    HCMAttendanceLogModel, HCMAttendanceLogSearchModel> {
  AttendanceLogRemoteRepository(
    super.dio, {
    required super.actionMap,
    super.entityName = 'Attendance',
    super.isSearchResponsePlural = true,
  });

  @override
  FutureOr<List<HCMAttendanceLogModel>> search(
    HCMAttendanceLogSearchModel query, {
    int? offSet,
    int? limit,
  }) async {
    Response response;

    response = await executeFuture(
      future: () async {
        return await dio.post(
          searchPath,
          queryParameters: {
            'tenantId': envConfig.variables.tenantId,
            ...query.toMap(),
          },
          data: {},
        );
      },
    );

    final responseMap = (response.data);

    if (responseMap is! Map<String, dynamic>) {
      throw InvalidApiResponseException(
        data: query.toMap(),
        path: searchPath,
        response: responseMap,
      );
    }

    if (!responseMap.containsKey(
      EntityPlurals.getPluralForEntityName(entityName),
    )) {
      throw InvalidApiResponseException(
        data: query.toMap(),
        path: searchPath,
        response: responseMap,
      );
    }

    final entityResponse =
        await responseMap[EntityPlurals.getPluralForEntityName(entityName)];

    if (entityResponse is! List) {
      throw InvalidApiResponseException(
        data: query.toMap(),
        path: searchPath,
        response: responseMap,
      );
    }

    final entityList = entityResponse.whereType<Map<String, dynamic>>();

    return entityList
        .map((e) => HCMAttendanceLogModel(
              attendanceLog: att.Mapper.fromMap<AttendanceLogModel>(e),
              auditDetails: Mapper.fromMap(
                e['auditDetails'],
              ),
              clientAuditDetails: Mapper.fromMap(
                e['clientAuditDetails'],
              ),
            ))
        .toList();
    ;
  }

  @override
  FutureOr<Response> bulkCreate(List<EntityModel> entities) async {
    final attendanceLogMapEntities =
        entities.map((e) => Mapper.toMap(e)).toList();
    List<Map<String, dynamic>> transformedLogs = [];

    for (var log in attendanceLogMapEntities) {
      var attendanceLog = log["attendanceLog"] as Map<String, dynamic>;
      var transformedLog = {
        ...attendanceLog,
        "auditDetails": log["auditDetails"],
        "clientAuditDetails": log["clientAuditDetails"],
      };
      transformedLogs.add(transformedLog);
    }

    return executeFuture(
      future: () async {
        return await dio.post(
          bulkCreatePath,
          options: Options(headers: {
            "content-type": 'application/json',
          }),
          data: {
            EntityPlurals.getPluralForEntityName(entityName): transformedLogs,
          },
        );
      },
    );
  }

  @override
  DataModelType get type => DataModelType.attendance;
}
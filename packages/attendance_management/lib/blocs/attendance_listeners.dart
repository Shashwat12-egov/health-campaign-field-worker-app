import 'package:attendance_management/attendance_management.dart';

import '../models/attendance_log.dart';

abstract class AttendanceListeners {
  void getAttendanceRegisters(
      Function(
              List<AttendancePackageRegisterModel>
                  attendancePackageRegisterModel)
          attendanceRegisters);

  void searchAttendanceLog(SearchAttendanceLog searchAttendanceLog);

  void markIndividualAttendance(
      MarkIndividualAttendance markIndividualAttendance);

  void submitAttendanceDetails(
    SubmitAttendanceDetails attendanceLogs,
  );

  void callSyncMethod();
}

class AttendanceSingleton {
  static final AttendanceSingleton _singleton = AttendanceSingleton._internal();

  factory AttendanceSingleton() {
    return _singleton;
  }

  AttendanceSingleton._internal();

  AttendanceListeners? _attendanceListeners;
  String _projectId = '';
  String _userId = '';
  String _appVersion = '';

  void setAttendanceListeners(
      {required AttendanceListeners attendanceListeners,
      required String projectId,
      required String userId,
      required String appVersion}) {
    _attendanceListeners = attendanceListeners;
    _projectId = projectId;
    _userId = userId;
    _appVersion = appVersion;
  }

  get projectId => _projectId;
  get userId => _userId;
  get appVersion => _appVersion;

  void getAttendanceRegisters(
      Function(
              List<AttendancePackageRegisterModel>
                  attendancePackageRegisterModel)
          attendanceRegisters) {
    _attendanceListeners?.getAttendanceRegisters(attendanceRegisters);
  }

  void searchAttendanceLog(SearchAttendanceLog searchAttendanceLog) {
    _attendanceListeners?.searchAttendanceLog(searchAttendanceLog);
  }

  void submitAttendanceDetails(SubmitAttendanceDetails attendanceLogs) {
    _attendanceListeners?.submitAttendanceDetails(attendanceLogs);
  }

  void markIndividualAttendance(
      MarkIndividualAttendance markIndividualAttendance) {
    _attendanceListeners?.markIndividualAttendance(markIndividualAttendance);
  }

  void callSync() {
    _attendanceListeners?.callSyncMethod();
  }
}

class SearchAttendanceLog {
  final String registerId;
  final String tenantId;
  final int entryTime;
  final int exitTime;
  final int currentDate;
  final Function(List<AttendanceLogModel> logResponse) onLogLoaded;

  SearchAttendanceLog({
    required this.registerId,
    required this.tenantId,
    required this.entryTime,
    required this.exitTime,
    required this.currentDate,
    required this.onLogLoaded,
  });
}

class MarkIndividualAttendance {
  final int entryTime;
  final int exitTime;
  final String status;
  final String individualId;
  final String registerId;
  final String id;
  final Function(String message) onMarked;

  MarkIndividualAttendance({
    required this.entryTime,
    required this.exitTime,
    required this.status,
    required this.individualId,
    required this.registerId,
    required this.id,
    required this.onMarked,
  });
}

class SubmitAttendanceDetails {
  final List<AttendanceLogModel> attendanceLogs;
  final Function(bool message) onMarked;
  final bool? createOplog;

  SubmitAttendanceDetails({
    required this.attendanceLogs,
    required this.onMarked,
    this.createOplog = false,
  });
}
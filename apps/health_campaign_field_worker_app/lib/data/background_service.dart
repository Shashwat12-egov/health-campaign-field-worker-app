import 'package:workmanager/workmanager.dart';

class BackgroundService {
  BackgroundService._();
  static final _backgroundService = BackgroundService._();
  factory BackgroundService() {
    return _backgroundService;
  }
}

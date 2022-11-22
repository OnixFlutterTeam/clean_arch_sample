import 'dart:async';

import 'package:clean_arch_sample/domain/repository/startup_repository.dart';

class StartupRepositoryImpl implements StartupRepository {
  bool _isInited = false;

  @override
  Future<void> initialized() async {
    //TODO init firebaseMessagingService / accountService
    _isInited = true;
  }

  @override
  bool isInited() => _isInited;
}

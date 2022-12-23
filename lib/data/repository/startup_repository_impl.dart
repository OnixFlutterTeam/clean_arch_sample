import 'dart:async';

import 'package:clean_arch_sample/domain/repository/startup_repository.dart';

class StartupRepositoryImpl implements StartupRepository {
  bool _isInitialized = false;

  @override
  Future<void> initialized() async {
    //TODO init firebaseMessagingService / accountService
    _isInitialized = true;
  }

  @override
  bool isInitialized() => _isInitialized;
}

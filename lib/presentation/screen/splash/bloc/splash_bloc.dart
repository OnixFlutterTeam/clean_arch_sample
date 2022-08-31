import 'dart:async';

import 'package:clean_arch_sample/core/arch/bloc/base_bloc.dart';
import 'package:clean_arch_sample/domain/repository/startup_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_bloc_imports.dart';

class SplashBloc extends BaseBloc<SplashEvent, SplashScreenState, SplashSR> {
  SplashBloc(this.startupRepository) : super(SplashScreenState()) {
    on<SplashEventInit>(_onInit);
    add(const SplashEvent.init());
  }

  final StartupRepository startupRepository;
  Timer? _timer;
  bool _isReadyTimer = false;

  FutureOr<void> _onInit(
    SplashEventInit event,
    Emitter<SplashScreenState> emit,
  ) async {
    _timer = Timer(
      const Duration(milliseconds: 1000),
      () {
        _isReadyTimer = true;
        _navNext();
      },
    );
    await startupRepository.initialized();
    _navNext();
  }

  Future<void> _navNext() async {
    if (_isReadyTimer && startupRepository.isInited()) {
      _timer?.cancel();
      addSr(const SplashSR.loadFinished());
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

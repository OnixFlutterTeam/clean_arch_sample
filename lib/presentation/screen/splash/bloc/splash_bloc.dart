import 'dart:async';

import 'package:clean_arch_sample/core/arch/bloc/base_bloc.dart';
import 'package:clean_arch_sample/domain/repository/startup_repository.dart';
import 'package:clean_arch_sample/presentation/screen/splash/bloc/splash_bloc_imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends BaseBloc<SplashEvent, SplashScreenState, SplashSR> {
  final StartupRepository startupRepository;
  Timer? _timer;
  bool _isReadyTimer = false;

  SplashBloc(this.startupRepository) : super(SplashScreenState()) {
    on<SplashEventInit>(_onInit);
    add(const SplashEvent.init());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  FutureOr<void> _onInit(
    SplashEventInit event,
    Emitter<SplashScreenState> emit,
  ) async {
    _timer = Timer(
      const Duration(seconds: 20),
      () {
        _isReadyTimer = true;
        _navNext();
      },
    );
    await startupRepository.initialized();
    _navNext();
  }

  void _navNext() {
    if (_isReadyTimer && startupRepository.isInited()) {
      _timer?.cancel();
      addSr(const SplashSR.loadFinished());
    }
  }
}

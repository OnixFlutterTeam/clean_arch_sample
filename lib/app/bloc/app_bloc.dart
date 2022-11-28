import 'dart:async';

import 'package:clean_arch_sample/app/bloc/app_bloc_imports.dart';
import 'package:clean_arch_sample/core/arch/bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends BaseBloc<AppEvent, AppScreenState, AppSR> {
  AppBloc() : super(const AppScreenState(themeMode: ThemeMode.system)) {
    on<ChangeThemeEvent>(_onChangeTheme);
  }

  FutureOr<void> _onChangeTheme(
    ChangeThemeEvent event,
    Emitter<AppScreenState> emit,
  ) {
    emit(state.copyWith(themeMode: event.mode));
  }
}

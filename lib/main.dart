import 'dart:async';
import 'dart:io';

import 'package:clean_arch_sample/core/arch/bloc/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/app/app_initialization.dart';
import 'core/di/app.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppInitialization.I.initApp();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Bloc.observer = AppBlocObserver();
    runApp(const App());
  }, (error, stackTrace) {
    logger.e('runZonedGuarded: Caught error in root zone. ', error, stackTrace);
    //there we can add FirebaseCrashlytics recordError method
  })?.catchError((e, trace) {
    logger.e('ERROR', e, trace);
    exit(-1);
  });
}

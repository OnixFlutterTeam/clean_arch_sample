import 'dart:async';
import 'dart:io';

import 'package:clean_arch_sample/core/arch/bloc/app_bloc_observer.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/app/app_initialisation.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppInitialization.I.initApp();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Bloc.observer = AppBlocObserver();
    runApp(App());
  }, (error, stackTrace) {
    Logger.logE('runZonedGuarded: Caught error in root zone. '
        'error: $error, stackTrace: $stackTrace');
    //there we can add FirebaseCrashlytics recordError method
  })?.catchError((e, trace) {
    Logger.printException(trace);
    Logger.logE('FAILED TO INIT APP');
    exit(-1);
  });
}

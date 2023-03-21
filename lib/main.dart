import 'dart:async';
import 'dart:io';

import 'package:clean_arch_sample/app/app.dart';
import 'package:clean_arch_sample/core/app/app_initialization.dart';
import 'package:clean_arch_sample/core/arch/bloc/app_bloc_observer.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  unawaited(runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await AppInitialization.I.initApp();

      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      Bloc.observer = AppBlocObserver();
      runApp(const App());
    },
    (error, stackTrace) {
      if (kDebugMode) {
        print('runZonedGuarded: Caught error in root zone.\n$error');
        print(stackTrace);
      }
      //there we can add FirebaseCrashlytics recordError method
    },
  )?.catchError((e, trace) {
    if (kDebugMode) {
      print('ERROR: $e');
      print(trace);
    }
    exit(-1);
  }));
}

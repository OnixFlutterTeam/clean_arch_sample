import 'package:clean_arch_sample/core/di/app.dart';
import 'package:clean_arch_sample/core/di/injection.dart';
import 'package:clean_arch_sample/data/model/local/todo_model.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppInitialization {
  static final AppInitialization _instance =
      AppInitialization._privateConstructor();

  static AppInitialization get I => _instance;

  AppInitialization._privateConstructor();

  Future<void> initApp() async {
    //TODO init firebase / Crashlytics / Messaging
    await _initializeDatabase();
    initializeDi(GetIt.I);

    logger.d('APP Init: done');
  }

  Future<void> _initializeDatabase() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TodoModelAdapter());
  }
}

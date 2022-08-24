import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:clean_arch_sample/core/di/injection.dart';
import 'package:clean_arch_sample/data/models/local/todo_model.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppInitialization {
  AppInitialization._privateConstructor();

  static final AppInitialization _instance =
      AppInitialization._privateConstructor();

  static AppInitialization get I => _instance;

  Future<void> initApp() async {
    //TODO init firebase / Crashlytics / Messaging
    await _initializeDatabase();
    initializeDi(GetIt.I);
    Logger.log('APP Init: done');
  }

  Future<void> _initializeDatabase() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TodoModelAdapter());
  }
}

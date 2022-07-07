import 'package:clean_arch_sample/src/data/models/local/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app.dart';
import 'src/core/DI/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeDatabase();
  initializeDi(GetIt.instance);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const App());
}

Future<void> _initializeDatabase() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoModelAdapter());
}

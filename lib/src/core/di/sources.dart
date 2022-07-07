import 'package:clean_arch_sample/src/data/source/local/preferences_source.dart';
import 'package:get_it/get_it.dart';

import '../../data/source/remote/impl/todo_source_impl.dart';
import '../../data/source/remote/todo_source.dart';

void registerSources(GetIt getIt) {
  getIt
    ..registerSingleton<TodoSource>(TodoSourceImpl())
    ..registerSingleton<PreferencesSource>(PreferencesSource());
}

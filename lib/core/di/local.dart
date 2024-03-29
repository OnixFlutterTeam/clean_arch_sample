import 'package:clean_arch_sample/core/arch/data/local/prefs/base_preferences.dart';
import 'package:clean_arch_sample/data/source/local/database/impl/todo_database_impl.dart';
import 'package:clean_arch_sample/data/source/local/database/todo_database.dart';
import 'package:clean_arch_sample/data/source/local/preferences_source/preferences_source.dart';
import 'package:clean_arch_sample/data/source/local/preferences_source/preferences_source_impl.dart';
import 'package:clean_arch_sample/data/source/local/secure_storage/secure_storage_source.dart';
import 'package:clean_arch_sample/data/source/local/secure_storage/secure_storage_source_impl.dart';
import 'package:get_it/get_it.dart';

void registerLocal(GetIt getIt) {
  getIt
    ..registerSingleton<TodoDatabase>(TodoDatabaseImpl())
    ..registerLazySingleton(BasePreferences.new)
    ..registerLazySingleton<PreferencesSource>(
      () => PreferencesSourceImpl(getIt.get<BasePreferences>()),
    )
    ..registerLazySingleton<SecureStorageSource>(
      SecureStorageSourceImpl.new,
    );
}

SecureStorageSource secureStorageSource() => GetIt.I.get<SecureStorageSource>();

PreferencesSource preferencesSource() => GetIt.I.get<PreferencesSource>();

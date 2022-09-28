import 'package:clean_arch_sample/core/di/app.dart';
import 'package:clean_arch_sample/core/di/bloc.dart';
import 'package:clean_arch_sample/core/di/local.dart';
import 'package:clean_arch_sample/core/di/remote.dart';
import 'package:clean_arch_sample/core/di/repository.dart';
import 'package:clean_arch_sample/core/di/services.dart';
import 'package:clean_arch_sample/core/di/source.dart';
import 'package:clean_arch_sample/core/di/usecase.dart';
import 'package:get_it/get_it.dart';

void initializeDi(GetIt getIt) {
  registerLocal(getIt);
  registerServices(getIt);
  registerRemote(getIt);
  registerSources(getIt);
  registerRepositories(getIt);
  registerApp(getIt);
  registerUseCases(getIt);
  registerBloc(getIt);
}

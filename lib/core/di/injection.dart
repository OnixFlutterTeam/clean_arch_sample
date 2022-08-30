import 'package:get_it/get_it.dart';

import 'LOCAL.dart';
import 'app.dart';
import 'bloc.dart';
import 'remote.dart';
import 'repository.dart';
import 'source.dart';
import 'usecase.dart';

void initializeDi(GetIt getIt) {
  registerLocal(getIt);
  registerRemote(getIt);
  registerSources(getIt);
  registerRepositories(getIt);
  registerApp(getIt);
  registerUseCases(getIt);
  registerBloc(getIt);
}

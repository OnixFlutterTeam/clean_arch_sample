import 'package:get_it/get_it.dart';

import 'LOCAL.dart';
import 'app.dart';
import 'bloc.dart';
import 'remote.dart';
import 'repositories.dart';
import 'sources.dart';
import 'usecases.dart';

void initializeDi(GetIt getIt) {
  registerLocal(getIt);
  registerRemote(getIt);
  registerSources(getIt);
  registerRepositories(getIt);
  registerApp(getIt);
  registerUseCases(getIt);
  registerBloc(getIt);
}

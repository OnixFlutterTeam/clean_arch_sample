import 'package:get_it/get_it.dart';

import 'database.dart';
import 'repositories.dart';
import 'sources.dart';
import 'usecases.dart';

void initializeDi(GetIt getIt) {
  registerSources(getIt);
  registerDatabase(getIt);
  registerRepositories(getIt);
  registerUseCases(getIt);
}

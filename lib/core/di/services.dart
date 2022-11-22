import 'package:clean_arch_sample/domain/service/session_service/session_service.dart';
import 'package:get_it/get_it.dart';

void registerServices(GetIt getIt) {
  getIt.registerSingleton<SessionService>(SessionService());
}

SessionService sessionService() => GetIt.I.get<SessionService>();

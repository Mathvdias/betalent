import 'package:app/src/controllers/home_controller.dart';
import 'package:app/src/data/dio.dart';
import 'package:app/src/data/repository.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

void di() {
  getIt.registerLazySingleton<IDioFactory>(
    () => DioFactoryImpl(),
  );

  getIt.registerLazySingleton<Dio>(
    () => getIt<IDioFactory>().create(),
  );

  getIt.registerLazySingleton<IHomeRepository>(
    () => HomeRepositoryImpl(
      dioFactory: getIt(),
    ),
  );

  getIt.registerLazySingleton<HomeControllerImpl>(
    () => HomeControllerImpl(
      repository: getIt<IHomeRepository>(),
    ),
  );
}

import 'package:gamechallange/data/datasources/game_remote_datasource.dart';
import 'package:gamechallange/data/repository/game_repository_impl.dart';
import 'package:gamechallange/domain/repository/game_repository.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../presentation/screens/dashboard/cubit/game_cubit.dart';
import '../services/dio_client.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }
  sl.registerSingleton<DioClient>(DioClient(isUnitTest: isUnitTest));
  _dataSources();
  _repositories();
  _useCase();
  _cubit();


}


/// Register repositories
void _repositories() {

  sl.registerLazySingleton<GameRepository>(() => GameRepositoryImpl(sl()));
}

/// Register dataSources
void _dataSources() {
  sl.registerLazySingleton<GameRemoteDatasource>(
        () => GameRemoteDatasourceImpl(sl()),
  );
}

void _useCase() {

    /// Games
  sl.registerLazySingleton(() => GameUseCase(sl()));
}

void _cubit() {
  sl.registerFactory(() => GameCubit(sl()));
}


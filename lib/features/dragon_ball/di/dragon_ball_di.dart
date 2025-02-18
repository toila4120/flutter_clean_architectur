import 'package:flutter_clean_architectur/features/dragon_ball/data/data_sources/dragon_ball_remote_data_source.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/data/data_sources/dragon_ball_remote_data_source_impl.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/data/repository/dragon_ball_repository_impl.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/domain/repository/dragon_ball_repository.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/domain/use_case/get_dragon_ball_with_id_use_case.dart';

import '../../../injection_container.dart';

void dragonBallDi() {
  getIt.registerSingleton<DragonBallRemoteDataSource>(
    const DragonBallRemoteDataSourceImpl(),
  );

  getIt.registerSingleton<DragonBallRepository>(
    DragonBallRepositoryImpl(remoteDataSource: getIt()),
  );

  getIt.registerSingleton<GetDragonBallWithIdUseCase>(
    GetDragonBallWithIdUseCase(repository: getIt()),
  );
}

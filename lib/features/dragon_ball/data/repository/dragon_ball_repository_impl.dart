import '../../domain/entity/dragon_ball_with_id_param.dart';
import '../../domain/repository/dragon_ball_repository.dart';
import '../data_sources/dragon_ball_remote_data_source.dart';
import '../model/Dragon_ball.dart';

class DragonBallRepositoryImpl implements DragonBallRepository {
  final DragonBallRemoteDataSource _remoteDataSource;

  const DragonBallRepositoryImpl({
    required DragonBallRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  Future<DragonBall> getDragonBallWithId(
      {required DragonBallWithIdParam param}) async {
    try {
      final result = await _remoteDataSource
          .getDragonBallRemoteDataSourceWithId(param: param);
      return result;
    } catch (e) {
      throw Exception('Failed to get Dragon Ball data');
    }
  }
}

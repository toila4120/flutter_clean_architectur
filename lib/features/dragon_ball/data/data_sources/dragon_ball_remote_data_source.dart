import 'package:flutter_clean_architectur/features/dragon_ball/data/model/Dragon_ball.dart';

import '../../domain/entity/dragon_ball_with_id_param.dart';

abstract class DragonBallRemoteDataSource {
  const DragonBallRemoteDataSource();
  Future<DragonBall> getDragonBallRemoteDataSourceWithId(
      {required DragonBallWithIdParam param});
}

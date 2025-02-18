import '../../data/model/Dragon_ball.dart';
import '../entity/dragon_ball_with_id_param.dart';

abstract class DragonBallRepository {
  const DragonBallRepository();

  Future<DragonBall> getDragonBallWithId(
      {required DragonBallWithIdParam param});
}

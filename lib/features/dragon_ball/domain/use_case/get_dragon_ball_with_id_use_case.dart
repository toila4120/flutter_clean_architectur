import 'package:flutter_clean_architectur/features/dragon_ball/data/model/Dragon_ball.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/domain/repository/dragon_ball_repository.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/domain/entity/dragon_ball_with_id_param.dart';

class GetDragonBallWithIdUseCase {
  GetDragonBallWithIdUseCase({
    required this.repository,
  });

  final DragonBallRepository repository;

  Future<DragonBall> call(DragonBallWithIdParam params) async {
    final dragonBall = await repository.getDragonBallWithId(param: params);
    return dragonBall;
  }
}

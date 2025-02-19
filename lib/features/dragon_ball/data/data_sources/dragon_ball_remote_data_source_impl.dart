import 'package:dio/dio.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/data/data_sources/dragon_ball_remote_data_source.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/data/model/Dragon_ball.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/domain/entity/dragon_ball_with_id_param.dart';

class DragonBallRemoteDataSourceImpl extends DragonBallRemoteDataSource {
  const DragonBallRemoteDataSourceImpl();

  @override
  Future<DragonBall> getDragonBallRemoteDataSourceWithId(
      {required DragonBallWithIdParam param}) async {
    final Dio dio = Dio();
    final response =
        await dio.get('https://dragonball-api.com/api/characters/${param.id}');
    if (response.statusCode == 200) {
      return DragonBall.fromJson(response.data);
    } else {
      throw Exception('Failed to get Dragon Ball data');
    }
  }
}

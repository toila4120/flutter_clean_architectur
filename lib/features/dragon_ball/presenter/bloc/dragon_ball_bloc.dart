import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/data/model/Dragon_ball.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/domain/use_case/get_dragon_ball_with_id_use_case.dart';
import '../../data/data_sources/dragon_ball_remote_data_source_impl.dart';
import '../../data/repository/dragon_ball_repository_impl.dart';
import '../../domain/entity/dragon_ball_with_id_param.dart';
import '../../domain/repository/dragon_ball_repository.dart';

part 'dragon_ball_event.dart';
part 'dragon_ball_state.dart';

class DragonBallBloc extends Bloc<DragonBallEvent, DragonBallState> {
  DragonBallBloc() : super(DragonBallState.init()) {
    on<DragonBallEvent>((event, emit) {});
    on<GetDragonBallWithId>(_onGetDragonBall);
  }

  Future<void> _onGetDragonBall(
      GetDragonBallWithId event, Emitter<DragonBallState> emit) async {
    final id = event.id;
    print('id: $id');
    final params = DragonBallWithIdParam(id);

    const DragonBallRemoteDataSourceImpl remoteDataSource =
        DragonBallRemoteDataSourceImpl();

    const DragonBallRepository repository = DragonBallRepositoryImpl(
      remoteDataSource: remoteDataSource,
    );

    final GetDragonBallWithIdUseCase useCase = GetDragonBallWithIdUseCase(
      repository: repository,
    );

    final DragonBall dragonBall = await useCase.call(params);
    emit(state.copyWith(dragonBall: dragonBall,),);
  }
}

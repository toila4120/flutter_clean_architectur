import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/data/model/Dragon_ball.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/domain/use_case/get_dragon_ball_with_id_use_case.dart';
import 'package:flutter_clean_architectur/injection_container.dart';

import '../../domain/entity/dragon_ball_with_id_param.dart';

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
    final params = DragonBallWithIdParam(id);

    final GetDragonBallWithIdUseCase useCase =
        getIt<GetDragonBallWithIdUseCase>();
    final DragonBall? dragonBall = await useCase.call(params);
    emit(state.copyWith(dragonBall: dragonBall));
  }
}

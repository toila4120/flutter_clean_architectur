part of 'dragon_ball_bloc.dart';

sealed class DragonBallEvent extends Equatable {
  const DragonBallEvent();

  @override
  List<Object> get props => [];
}

class GetDragonBallWithId extends DragonBallEvent {
  final int id;
  const GetDragonBallWithId({required this.id});

  @override
  List<Object> get props => [];
}

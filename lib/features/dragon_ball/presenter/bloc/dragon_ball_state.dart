part of 'dragon_ball_bloc.dart';

enum DragonBallStatus { initial, loading, success, failure }

class DragonBallState extends Equatable {
  final DragonBall? dragonBall;
  final DragonBallStatus status;

  const DragonBallState({required this.dragonBall, required this.status});

  factory DragonBallState.init() {
    return DragonBallState(
      dragonBall: DragonBall(
          id: 1,
          name: "Goku",
          ki: "60.000.000",
          maxKi: "90 Septillion",
          race: "Saiyan",
          gender: "Male",
          description: "abc",
          image: "https://dragonball-api.com/characters/goku_normal.webp",
          affiliation: "Z Fighter"),
      status: DragonBallStatus.initial,
    );
  }

  DragonBallState copyWith({
    DragonBall? dragonBall,
    DragonBallStatus? status,
  }) {
    return DragonBallState(
      dragonBall: dragonBall ?? this.dragonBall,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        dragonBall,
        status,
      ];
}

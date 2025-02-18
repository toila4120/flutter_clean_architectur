import 'package:flutter_clean_architectur/features/dragon_ball/di/dragon_ball_di.dart';
import 'package:flutter_clean_architectur/features/pokemon/di/pokemon_di.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  pokemonDi();
  dragonBallDi();
}

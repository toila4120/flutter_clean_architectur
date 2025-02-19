import '../../features/dragon_ball/presenter/bloc/dragon_ball_bloc.dart';
import '../../features/pokemon/presenter/bloc/pokemon_bloc.dart';
import '../../injection_container.dart';

void blocDI() {
  getIt.registerFactory(() => DragonBallBloc());
  getIt.registerFactory(() => PokemonBloc());
}

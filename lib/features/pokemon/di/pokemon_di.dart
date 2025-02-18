import 'package:flutter_clean_architectur/features/pokemon/data/datasources/pokemon_remote_data_impl.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/usecases/get_pokemon_use_case.dart';

import '../../../injection_container.dart';
import '../data/datasources/pokemon_remote_data.dart';
import '../data/repository/pokemon_repository_impl.dart';
import '../domain/repository/pokemon_repository.dart';

void pokemonDi() {
  getIt.registerSingleton<PokemonRemoteData>(
    const PokemonRemoteDataImpl(),
  );

  getIt.registerSingleton<PokemonRepository>(
    PokemonRepositoryImpl(remoteDataSource: getIt()),
  );

  getIt.registerSingleton<GetPokemonUseCase>(
    GetPokemonUseCase(repository: getIt()),
  );
}

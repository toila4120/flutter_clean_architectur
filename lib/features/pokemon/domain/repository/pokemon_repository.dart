import 'package:flutter_clean_architectur/features/pokemon/data/models/pokemon.dart';

import '../../../../core/utils/typedef.dart';

abstract class PokemonRepository {
  const PokemonRepository();

  ResultFuture<Pokemon> getPokemon({
    required param,
  });
}

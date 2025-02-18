import 'package:flutter_clean_architectur/features/pokemon/data/models/pokemon.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/entity/get_pokemon_with_id_param.dart';

abstract class PokemonRemoteData {
  const PokemonRemoteData();

  Future<Pokemon> getPokemon({
    required GetPokemonWithIdParam param,
  });
}

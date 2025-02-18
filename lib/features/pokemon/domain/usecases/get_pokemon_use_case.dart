import 'package:flutter_clean_architectur/core/use_case/use_case_with_prarams.dart';
import 'package:flutter_clean_architectur/core/utils/typedef.dart';
import 'package:flutter_clean_architectur/features/pokemon/data/models/pokemon.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/entity/get_pokemon_with_id_param.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/repository/pokemon_repository.dart';

class GetPokemonUseCase
    extends UseCaseWithPrarams<Pokemon, GetPokemonWithIdParam> {
  final PokemonRepository _respository;

  GetPokemonUseCase({
    required PokemonRepository repository,
  }) : _respository = repository;

  @override
  ResultFuture<Pokemon> call(GetPokemonWithIdParam params) =>
      _respository.getPokemon(
        param: params,
      );
}

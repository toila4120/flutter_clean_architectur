import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architectur/core/errors/api_failture.dart';
import 'package:flutter_clean_architectur/core/utils/typedef.dart';
import 'package:flutter_clean_architectur/features/pokemon/data/datasources/pokemon_remote_data.dart';
import 'package:flutter_clean_architectur/features/pokemon/data/models/pokemon.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/repository/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonRemoteData _remoteData;

  PokemonRepositoryImpl({required PokemonRemoteData remoteDataSource})
      : _remoteData = remoteDataSource;

  @override
  ResultFuture<Pokemon> getPokemon({required param}) async {
    try {
      Pokemon pokemon = await _remoteData.getPokemon(param: param);
      return right(pokemon);
    } on ApiFailture catch (error) {
      return left(error);
    }
  }
}

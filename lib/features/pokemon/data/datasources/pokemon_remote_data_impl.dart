import 'package:dio/dio.dart';
import 'package:flutter_clean_architectur/features/pokemon/data/datasources/pokemon_remote_data.dart';
import 'package:flutter_clean_architectur/features/pokemon/data/models/pokemon.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/entity/get_pokemon_with_id_param.dart';

class PokemonRemoteDataImpl extends PokemonRemoteData {
  const PokemonRemoteDataImpl();

  @override
  Future<Pokemon> getPokemon({required GetPokemonWithIdParam param}) async {
    final Dio dio = Dio();
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon/${param.id}',
    );

    if (response.statusCode == 200) {
      return Pokemon.fromJson(response.data);
    } else {
      throw Exception();
    }
  }
}

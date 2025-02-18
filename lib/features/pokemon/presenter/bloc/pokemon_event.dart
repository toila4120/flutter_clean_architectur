part of 'pokemon_bloc.dart';

class PokemonEvent extends Equatable {
  const PokemonEvent();

  @override
  List<Object> get props => [];
}

class GetPokemonWithId extends PokemonEvent {
  final int id;

  const GetPokemonWithId({required this.id});

  @override
  List<Object> get props => [
        id,
      ];
}

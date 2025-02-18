import '../../data/models/pokemon.dart';

enum PokemonError {
  none,
  other;

  bool get isNone => this == PokemonError.none;

  bool get isOther => this == PokemonError.other;
}

class PokemonState {
  final Pokemon pokemon;
  final PokemonError error;

  const PokemonState({required this.pokemon, required this.error});

  factory PokemonState.init() {
    return PokemonState(
      pokemon: Pokemon(
        id: 1,
        name: "bulbasaur",
        order: 1,
        sprites: Sprites(
          other: Other(
            officialArtwork: OfficialArtwork(
                frontDefault:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
                frontShiny:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/1.png"),
          ),
        ),
        weight: 69,
      ),
      error: PokemonError.none,
    );
  }

  PokemonState copyWith({
    Pokemon? pokemon,
    PokemonError? error,
  }) {
    return PokemonState(
        pokemon: pokemon ?? this.pokemon, error: error ?? this.error);
  }
}

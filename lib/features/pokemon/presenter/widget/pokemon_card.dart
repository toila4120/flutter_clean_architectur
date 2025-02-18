import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pokemon_bloc.dart';
import '../bloc/pokemon_state.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${state.pokemon.name}  (${state.pokemon.id})"),
              const SizedBox(height: 16),
              Image.network(
                state.pokemon.sprites!.other!.officialArtwork!.frontDefault,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              const SizedBox(height: 16),
              Text("Cân nặng: ${state.pokemon.weight}"),
            ],
          ),
        );
      },
    );
  }
}

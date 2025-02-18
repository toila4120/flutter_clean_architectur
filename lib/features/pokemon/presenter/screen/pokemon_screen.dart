import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pokemon_bloc.dart';
import '../bloc/pokemon_state.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 20,
              bottom: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pokemon",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${state.pokemon.name}  (${state.pokemon.id})"),
                      const SizedBox(height: 16),
                      Image.network(
                        state.pokemon.sprites!.other!.officialArtwork!
                            .frontDefault,
                      ),
                      const SizedBox(height: 16),
                      Text("Cân nặng: ${state.pokemon.weight}"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<PokemonBloc>()
                        .add(GetPokemonWithId(id: Random().nextInt(1025)));
                  },
                  child: const Text("Random pokemon ngẫu nhiên"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

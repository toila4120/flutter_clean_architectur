import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architectur/features/pokemon/presenter/widget/button_random_pokemon.dart';

import '../bloc/pokemon_bloc.dart';
import '../bloc/pokemon_state.dart';
import '../widget/pokemon_card.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        return const Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
              top: 40,
              left: 20,
              bottom: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pokemon",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                PokemonCard(),
                SizedBox(height: 20),
                ButtonRandomPokemon()
              ],
            ),
          ),
        );
      },
    );
  }
}

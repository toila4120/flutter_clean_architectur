import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pokemon_bloc.dart';

class ButtonRandomPokemon extends StatelessWidget {
  const ButtonRandomPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context
            .read<PokemonBloc>()
            .add(GetPokemonWithId(id: Random().nextInt(1025)));
      },
      child: const Text("Random pokemon ngẫu nhiên"),
    );
  }
}

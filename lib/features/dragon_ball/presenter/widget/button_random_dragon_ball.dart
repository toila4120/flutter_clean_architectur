import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/presenter/bloc/dragon_ball_bloc.dart';

class ButtonRandomDragonBall extends StatelessWidget {
  const ButtonRandomDragonBall({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context
            .read<DragonBallBloc>()
            .add(GetDragonBallWithId(id: Random().nextInt(58)));
      },
      child: const Text("Ngẫu nhiên 1 nhân vật"),
    );
  }
}

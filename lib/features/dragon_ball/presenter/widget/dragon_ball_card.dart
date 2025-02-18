import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architectur/features/dragon_ball/presenter/bloc/dragon_ball_bloc.dart';

class DragonBallCard extends StatelessWidget {
  const DragonBallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DragonBallBloc, DragonBallState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  state.dragonBall!.image,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                state.dragonBall!.name,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "${state.dragonBall!.race} - ${state.dragonBall!.gender}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber.shade600,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Base KI:",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                state.dragonBall!.ki,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber.shade600,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Total KI:",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                state.dragonBall!.maxKi,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber.shade600,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Afilliation:",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                state.dragonBall!.affiliation,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber.shade600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/entity/get_pokemon_with_id_param.dart';
import 'package:flutter_clean_architectur/features/pokemon/domain/usecases/get_pokemon_use_case.dart';
import 'package:flutter_clean_architectur/features/pokemon/presenter/bloc/pokemon_state.dart';
import 'package:flutter_clean_architectur/injection_container.dart';

part 'pokemon_event.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(PokemonState.init()) {
    on<GetPokemonWithId>(_onGetPokemonWithId);
  }

  Future<void> _onGetPokemonWithId(
    GetPokemonWithId event,
    Emitter<PokemonState> emit,
  ) async {
    final int id = event.id;
    final GetPokemonUseCase useCase = getIt<GetPokemonUseCase>();
    final result = await useCase.call(
      GetPokemonWithIdParam(
        id: id,
      ),
    );
    result.fold(
      (error) {
        emit(state.copyWith(
          error: PokemonError.other,
        ));
      },
      (result) {
        emit(state.copyWith(
          pokemon: result,
        ));
      },
    );
  }
}

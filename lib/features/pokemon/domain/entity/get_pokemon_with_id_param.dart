import 'package:equatable/equatable.dart';

class GetPokemonWithIdParam extends Equatable {
  final int id;

  const GetPokemonWithIdParam({
    required this.id,
  });

  Map<String, int> toJson() {
    return {
      "id": id,
    };
  }

  @override
  List<Object> get props => [id];
}

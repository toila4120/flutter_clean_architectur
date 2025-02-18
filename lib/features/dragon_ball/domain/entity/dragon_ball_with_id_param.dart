import 'package:equatable/equatable.dart';

class DragonBallWithIdParam extends Equatable {
  final int id;
  const DragonBallWithIdParam(this.id);

  Map<String, dynamic> toJson() => {
        'id': id,
      };

  @override
  List<Object?> get props => [
        id,
      ];
}

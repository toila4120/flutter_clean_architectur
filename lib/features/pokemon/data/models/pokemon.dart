import 'package:equatable/equatable.dart';

class Pokemon extends Equatable {
  const Pokemon({
    required this.id,
    required this.name,
    required this.order,
    required this.sprites,
    required this.weight,
  });

  final int id;
  final String name;
  final int order;
  final Sprites? sprites;
  final int weight;

  Pokemon copyWith({
    int? id,
    String? name,
    int? order,
    Sprites? sprites,
    int? weight,
  }) {
    return Pokemon(
      id: id ?? this.id,
      name: name ?? this.name,
      order: order ?? this.order,
      sprites: sprites ?? this.sprites,
      weight: weight ?? this.weight,
    );
  }

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      order: json["order"] ?? 0,
      sprites:
          json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]),
      weight: json["weight"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "order": order,
        "sprites": sprites?.toJson(),
        "weight": weight,
      };

  @override
  String toString() {
    return "$id, $name, $order, $sprites, $weight, ";
  }

  @override
  List<Object?> get props => [
        id,
        name,
        order,
        sprites,
        weight,
      ];
}

class Sprites {
  Sprites({
    required this.other,
  });

  final Other? other;

  Sprites copyWith({
    Other? other,
  }) {
    return Sprites(
      other: other ?? this.other,
    );
  }

  factory Sprites.fromJson(Map<String, dynamic> json) {
    return Sprites(
      other: json["other"] == null ? null : Other.fromJson(json["other"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "other": other?.toJson(),
      };

  @override
  String toString() {
    return "$other, ";
  }
}

class Other {
  Other({
    required this.officialArtwork,
  });

  final OfficialArtwork? officialArtwork;

  Other copyWith({
    OfficialArtwork? officialArtwork,
  }) {
    return Other(
      officialArtwork: officialArtwork ?? this.officialArtwork,
    );
  }

  factory Other.fromJson(Map<String, dynamic> json) {
    return Other(
      officialArtwork: json["official-artwork"] == null
          ? null
          : OfficialArtwork.fromJson(json["official-artwork"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "official-artwork": officialArtwork?.toJson(),
      };

  @override
  String toString() {
    return "$officialArtwork, ";
  }
}

class OfficialArtwork {
  OfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });

  final String frontDefault;
  final String frontShiny;

  OfficialArtwork copyWith({
    String? frontDefault,
    String? frontShiny,
  }) {
    return OfficialArtwork(
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
    );
  }

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) {
    return OfficialArtwork(
      frontDefault: json["front_default"] ?? "",
      frontShiny: json["front_shiny"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
      };

  @override
  String toString() {
    return "$frontDefault, $frontShiny, ";
  }
}

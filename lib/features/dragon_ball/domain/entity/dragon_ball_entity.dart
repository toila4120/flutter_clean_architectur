class DragonBall {
  DragonBall({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.description,
    required this.image,
    required this.affiliation,
  });

  final int id;
  final String name;
  final String ki;
  final String maxKi;
  final String race;
  final String gender;
  final String description;
  final String image;
  final String affiliation;

  DragonBall copyWith({
    int? id,
    String? name,
    String? ki,
    String? maxKi,
    String? race,
    String? gender,
    String? description,
    String? image,
    String? affiliation,
  }) {
    return DragonBall(
      id: id ?? this.id,
      name: name ?? this.name,
      ki: ki ?? this.ki,
      maxKi: maxKi ?? this.maxKi,
      race: race ?? this.race,
      gender: gender ?? this.gender,
      description: description ?? this.description,
      image: image ?? this.image,
      affiliation: affiliation ?? this.affiliation,
    );
  }

  factory DragonBall.fromJson(Map<String, dynamic> json) {
    return DragonBall(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      ki: json["ki"] ?? "",
      maxKi: json["maxKi"] ?? "",
      race: json["race"] ?? "",
      gender: json["gender"] ?? "",
      description: json["description"] ?? "",
      image: json["image"] ?? "",
      affiliation: json["affiliation"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ki": ki,
        "maxKi": maxKi,
        "race": race,
        "gender": gender,
        "description": description,
        "image": image,
        "affiliation": affiliation,
      };

  @override
  String toString() {
    return "$id, $name, $ki, $maxKi, $race, $gender, $description, $image, $affiliation, ";
  }
}

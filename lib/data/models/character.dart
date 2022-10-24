class Character {
  String image;
  String name;
  String status;
  String species;

  Character({
    required this.image,
    required this.name,
    required this.status,
    required this.species,
  });

  factory Character.fromJson(json) {
    return Character(
      image: json['image'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
    );
  }
}

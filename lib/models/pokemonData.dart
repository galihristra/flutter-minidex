class PokemonData {
  final List<dynamic> abilities;
  final String name;
  final dynamic spriteUrl;

  PokemonData({this.abilities, this.name, this.spriteUrl});

  factory PokemonData.fromJson(Map<String, dynamic> json) {
    return PokemonData(
        abilities: json['abilities'],
        name: json['name'],
        spriteUrl: json['sprites']);
  }
}

class Ability {
  Map<String, String> ability;
  bool isHidden;
  int slot;

  Ability({this.ability, this.isHidden, this.slot});
}

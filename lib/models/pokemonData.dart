class PokemonData {
  final List<dynamic> abilities;
  final String name;
  final dynamic spriteUrl;
  final List<dynamic> types;

  PokemonData({this.abilities, this.name, this.spriteUrl, this.types});

  factory PokemonData.fromJson(Map<String, dynamic> json) {
    return PokemonData(
        abilities: json['abilities'],
        name: json['name'],
        spriteUrl: json['sprites'],
        types: json['types']);
  }
}

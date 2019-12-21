class PokemonData {
  String name;
  String url;
  String sprite;

  PokemonData({this.name, this.url, this.sprite});

  factory PokemonData.fromjson(Map<String, dynamic> json) {
    return PokemonData(name: json['name'], url: json['url']);
  }
}

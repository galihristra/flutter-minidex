import 'package:http/http.dart' as http;
import 'package:minidex/models/pokemonData.dart';
import 'dart:convert';

String baseUrl = 'https://pokeapi.co/api/v2/';

class PokemonService {
  Future<List<PokemonData>> getAllPokemonData() async {
    final response = await http.get(baseUrl + 'pokemon/');
    if (response.statusCode == 200) {
      // ? decode json data
      final result = json.decode(response.body);
      // ? get results property
      Iterable list = result['results'];
      return list.map((pokemon) => PokemonData.fromjson(pokemon)).toList();
    } else {
      throw Exception('Failed to load pokemon list');
    }
  }
}

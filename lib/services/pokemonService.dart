import 'dart:developer';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:minidex/models/pokemonData.dart';

String baseUrl = 'https://pokeapi.co/api/v2/';

class PokemonService {
  /// Load all pokemon data
  ///
  /// Should return complete pokemon data (name, sprites)
  Future<List<PokemonData>> getAllPokemonData() async {
    final response = await http.get(baseUrl + 'pokemon/');
    if (response.statusCode == 200) {
      // ? decode json data
      final result = json.decode(response.body);
      // ? get results property
      Iterable pokemonList = result['results'];
      List<PokemonData> returnList = [];
      for (var data in pokemonList) {
        PokemonData detail = await getPokemonDetail(data['url']);
        returnList.add(detail);
      }
      return returnList;
    } else {
      throw Exception('Failed to load pokemon list');
    }
  }

  /// Load Pokemon Detail From URL
  /// parameter (pokemonUrl)
  ///
  /// Should return detailed pokemon data
  Future<PokemonData> getPokemonDetail(String pokemonUrl) async {
    final response = await http.get(pokemonUrl);
    if (response.statusCode == 200) {
      return PokemonData.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load pokemon detail');
    }
  }
}

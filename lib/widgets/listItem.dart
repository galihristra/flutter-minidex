import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:minidex/models/pokemonData.dart';

ListTile pokemonListItem(BuildContext context, int index, PokemonData pokemon) {
  return ListTile(
    leading: CachedNetworkImage(
      placeholder: (context, url) => CircularProgressIndicator(),
      imageUrl: pokemon.spriteUrl['front_default'],
    ),
    title: Text(pokemon.name),
  );
}

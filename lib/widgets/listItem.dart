import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:minidex/models/pokemonData.dart';
import 'package:minidex/shared/sharedLibrary.dart';

Card pokemonListItem(BuildContext context, int index, PokemonData pokemon) {
  return Card(
    margin: EdgeInsets.all(6),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Container(
            child: CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl: pokemon.spriteUrl['front_default'],
            ),
          ),
          title: Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            child: Text(
              toTitleCase(pokemon.name),
              textAlign: TextAlign.center,
            ),
          ),
          subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: pokemon.types.map((type) {
                String pokemonType = type['type']['name'];
                return RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  textColor: getTypeTextColor(pokemonType),
                  color: getTypeColor(pokemonType),
                  child: Text(pokemonType.toUpperCase()),
                  onPressed: () {},
                );
              }).toList()),
        ),
      ],
    ),
  );
}

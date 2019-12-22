import 'package:flutter/material.dart';

String toTitleCase(String text) {
  String result = '${text[0].toUpperCase()}${text.substring(1)}';
  return result;
}

Color getTypeColor(String type) {
  switch (type) {
    case 'normal':
      return Colors.brown[100];
    case 'grass':
      return Colors.green;
    case 'fire':
      return Colors.deepOrange;
    case 'water':
      return Colors.blue;
    case 'flying':
      return Colors.deepPurple[200];
    case 'water':
      return Colors.blue;
    case 'bug':
      return Colors.lightGreen;
    case 'poison':
      return Colors.purple;
    case 'electric':
      return Colors.yellow;
    case 'ground':
      return Colors.amber;
    case 'rock':
      return Colors.amber[800];
    case 'fairy':
      return Colors.pink[100];
    case 'fighting':
      return Colors.red;
    case 'psychic':
      return Colors.pink;
    case 'steel':
      return Colors.grey[400];
    case 'ice':
      return Colors.lightBlue[200];
    case 'ghost':
      return Colors.purple[900];
    case 'dark':
      return Colors.brown[800];
    case 'dragon':
      return Colors.deepPurple[900];
    default:
      return Colors.white;
  }
}

Color getTypeTextColor(String type) {
  switch (type) {
    case 'normal':
      return Colors.white;
    default:
      return Colors.white;
  }
}

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
      return Colors.red;
    case 'water':
      return Colors.blue;
    case 'flying':
      return Colors.deepPurple;
    case 'water':
      return Colors.blue;
    case 'bug':
      return Colors.lightGreen;
    case 'poison':
      return Colors.purple;
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

import 'package:flutter/material.dart';

enum TypePokemon {
  normal([Color(0xFFA4ACAF)]),
  fighting([Color(0xFFD56723)]),
  flying([Color(0xFF3DC7EF), Color(0xFFBDB9B8)]),
  poison([Color(0xFFB97FC9)]),
  ground([Color(0xFFF7DE3F), Color(0xFFAB9842)]),
  rock([Color(0xFFA38C21)]),
  bug([Color(0xFF729F3F)]),
  ghost([Color(0xFF7B62A3)]),
  steel([Color(0xFF9EB7B8)]),
  fire([Color(0xFFFD7D24)]),
  water([Color(0xFF4592C4)]),
  grass([Color(0xFF9BCC50)]),
  electric([Color(0xFFEED535)]),
  psychic([Color(0xFFF366B9)]),
  ice([Color(0xFF51C4E7)]),
  dragon([Color(0xFF53A4CF), Color(0xFFF16E57)]),
  dark([Color(0xFF707070)]),
  fairy([Color(0xFFFDB9E9)]),
  unknown([Colors.grey]),
  shadow([Colors.purpleAccent]);

  final List<Color> color;
  const TypePokemon(this.color);
}

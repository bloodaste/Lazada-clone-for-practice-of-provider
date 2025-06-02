import 'package:flutter/material.dart';

class Game {
  final Icon image;
  final String name;

  Game({required this.image, required this.name});
}

final List<Game> gamelist = [
  Game(image: Icon(Icons.vaccines_sharp), name: 'Lucky Egg'),
  Game(image: Icon(Icons.border_style_sharp), name: 'MergeBoss'),
  Game(image: Icon(Icons.wallet), name: 'GogoMatch'),
  Game(image: Icon(Icons.wallet), name: 'BigWin'),
  Game(image: Icon(Icons.wallet), name: 'Crack & WIn'),
  Game(image: Icon(Icons.wallet), name: 'CapyBistro'),
  Game(image: Icon(Icons.wallet), name: 'Style Star'),
];

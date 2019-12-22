import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:minidex/models/pokemonData.dart';
import 'package:minidex/services/pokemonService.dart';
import 'package:minidex/widgets/listItem.dart';

void main() => runApp(Pokedex());

class Pokedex extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  List<PokemonData> _pokemonDatas = List<PokemonData>();
  bool isLoading = true;
  ScrollController _scrollController = new ScrollController();

  void _loadPokemonList() {
    PokemonService().getAllPokemonData().then((result) {
      setState(() {
        _pokemonDatas.addAll(result);
        isLoading = false;
      });
    }).then((value) {
      log('load done');
    });
  }

  @override
  void initState() {
    super.initState();
    _loadPokemonList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MiniDex'),
          centerTitle: true,
        ),
        body: !isLoading
            ? ListView.builder(
                itemCount: _pokemonDatas.length,
                itemBuilder: (context, index) =>
                    pokemonListItem(context, index, _pokemonDatas[index]))
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}

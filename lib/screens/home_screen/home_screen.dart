import 'package:flutter/material.dart';
import 'package:pokedex/common/poke_app_bar/poke_app_bar.dart';
import 'package:pokedex/screens/home_screen/sections/poke_drawer.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/common/poke_botton_navigator/poke_botton_navigator.dart';
import 'package:pokedex/screens/home_screen/sections/popular.dart';
import 'package:pokedex/screens/home_screen/sections/find_pokemon.dart';
import 'package:pokedex/screens/home_screen/sections/positioned_losango_left.dart';
import 'package:pokedex/screens/home_screen/sections/positioned_losango_rigth.dart';
import 'package:pokedex/screens/home_screen/sections/type_pokemon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.listPokemon});
  final List<Pokemon> listPokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
      appBar: pokeAppBar(),
      drawer: pokeDrawer(context),
      body: Stack(
        children: [
          const Positioned(
            top: -85,
            child: FindPokemon(),
          ),
          positionedLosangoLeft(),
          const Positioned(
            top: 150,
            child: TypePokemon(),
          ),
          Positioned(
            right: 20,
            left: 30,
            top: 265,
            child: Popular(listPokemon: listPokemon),
          ),
          positionedLosangoRigth(),
        ],
      ),
      bottomNavigationBar: pokeBottonNavigator(Colors.purple),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex/common/poke_app_bar/poke_app_bar.dart';
import 'package:pokedex/common/poke_botton_navigator/poke_botton_navigator.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/models/stats.dart';
import 'package:pokedex/screens/detail_screen/sections/description_detail.dart';
import 'package:pokedex/screens/detail_screen/sections/header_detail.dart';
import 'package:pokedex/screens/detail_screen/sections/stats_sections.dart';
import 'package:pokedex/screens/detail_screen/sections/top_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.pokemon, required this.stats});
  final Pokemon pokemon;
  final List<Stats> stats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: pokeAppBar(),
      body: Column(
        children: [
          headerDetail(context, pokemon.image),
          Column(
            children: [
              topDetail(context, pokemon.name, pokemon.num, pokemon.type),
              descriptionDetail(context, stats[0].flavor),
              StatsSections(stats: stats),
            ],
          ),
        ],
      ),
      bottomNavigationBar:
          pokeBottonNavigator(const Color.fromARGB(255, 162, 169, 176)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex/components/box/box_card/box_card.dart';
import 'package:pokedex/components/button_search/button_search.dart';

class FindPokemon extends StatelessWidget {
  const FindPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 90.0),
      child: BoxCard(
        color: Color.fromARGB(255, 241, 241, 241),
        boxContent: _FindPokemonContent(),
      ),
    );
  }
}

class _FindPokemonContent extends StatelessWidget {
  const _FindPokemonContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 14.0),
          width: MediaQuery.of(context).size.width / 1.6,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Pokedéx",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Text(
                "Todas as espécies de pokemons estão esperando por você!",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const ButtonSearch(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 33.0, bottom: 35.0),
          child: Image.asset('images/pokemon.png'),
        ),
      ],
    );
  }
}

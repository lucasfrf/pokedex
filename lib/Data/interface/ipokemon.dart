import 'package:pokedex/models/pokemon.dart';

abstract class IPokemon {
  Future<List<Pokemon>> getAll();
}

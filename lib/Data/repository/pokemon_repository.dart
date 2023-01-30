import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex/Data/interface/ipokemon.dart';
import 'package:pokedex/Data/consts/base_api.dart';
import 'package:pokedex/common/error/failure.dart';
import 'package:pokedex/models/pokemon.dart';

class PokemonRepository implements IPokemon {
  PokemonRepository({required this.dio});
  final Dio dio;

  @override
  Future<List<Pokemon>> getAll() async {
    try {
      final response = await dio.get(BaseAPI.baseURL);
      final responseJson = jsonDecode(response.data) as Map<String, dynamic>;
      final listPokemon = responseJson['pokemon'] as List<dynamic>;
      return listPokemon.map((e) => Pokemon.fomMap(e)).toList();
    } catch (e) {
      throw Failure(message: 'Não foi possível carregar os dados');
    }
  }
}

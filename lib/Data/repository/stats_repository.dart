import 'package:dio/dio.dart';
import 'package:pokedex/Data/consts/base_api.dart';
import 'package:pokedex/Data/interface/istats.dart';
import 'package:pokedex/common/error/failure.dart';
import 'package:pokedex/models/stats.dart';

class StatsRepository implements IStats {
  StatsRepository({required this.dio});
  final Dio dio;

  @override
  Future<List<Stats>> getStats(String id) async {
    try {
      final especieURL = '${BaseAPI.urlSpecis}$id';
      final respflavor = await dio.get(especieURL);
      var flavor = "";
      for (var i = 0; i < respflavor.data['flavor_text_entries'].length; i++) {
        if (respflavor.data['flavor_text_entries'][i]['version']['name']
                .toString() ==
            'ruby') {
          flavor = respflavor.data['flavor_text_entries'][i]['flavor_text']
              .toString();
        }
      }

      final baseurl = '${BaseAPI.urlPokemon}$id';
      final response = await dio.get(baseurl);
      List<Stats> listStats = [];
      for (var i = 0; i < response.data['stats'].length; i++) {
        Stats stats = Stats(
          base: int.parse(response.data['stats'][i]['base_stat'].toString()),
          stat: response.data['stats'][i]['stat']['name'].toString(),
          flavor: flavor,
        );
        listStats.add(stats);
      }
      return listStats;
    } catch (e) {
      throw Failure(message: 'Não foi possível carregar as habilidades');
    }
  }
}

import 'package:pokedex/models/stats.dart';

abstract class IStats {
  Future<List<Stats>> getStats(String id);
}

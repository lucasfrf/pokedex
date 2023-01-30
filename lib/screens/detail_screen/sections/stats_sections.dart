import 'package:flutter/material.dart';
import 'package:pokedex/components/progress_bar/progress_bar.dart';
import 'package:pokedex/models/stats.dart';

class StatsSections extends StatelessWidget {
  const StatsSections({super.key, required this.stats});
  final List<Stats> stats;

  double getValueStats(String nameStats) {
    int valueStats = 0;
    for (var i = 0; i < stats.length; i++) {
      if (stats[i].stat == nameStats) {
        valueStats = stats[i].base;
        break;
      }
    }
    return (valueStats / 100);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ProgressBar(
              title: 'Vida',
              statsColor: const Color.fromARGB(255, 247, 128, 42),
              statsValue: getValueStats('hp'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: ProgressBar(
              title: 'Defesa',
              statsColor: const Color.fromARGB(255, 196, 247, 137),
              statsValue: getValueStats('defense'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: ProgressBar(
              title: 'Ataque',
              statsColor: const Color.fromARGB(255, 234, 104, 109),
              statsValue: getValueStats('attack'),
            ),
          ),
        ],
      ),
    );
  }
}

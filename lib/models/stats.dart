class Stats {
  Stats({required this.base, required this.stat, required this.flavor});
  final int base;
  final String stat;
  final String flavor;

  factory Stats.fromMap(Map<String, dynamic> json) {
    return Stats(
      base: json['base_stat'],
      stat: json['stat']['name'],
      flavor: json['flavor'],
    );
  }
}

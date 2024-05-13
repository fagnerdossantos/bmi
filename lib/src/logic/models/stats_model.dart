class StatsModel {
  final double bmi;
  final String classification;
  final String bmiRange;
  final String message;
  final List<String> tips;
  StatsModel({
    required this.bmi,
    required this.classification,
    required this.bmiRange,
    required this.message,
    required this.tips,
  });

  factory StatsModel.fromMap(Map<String, dynamic> map) {
    return StatsModel(
      bmi: map['bmi'] as double,
      classification: map['classification'] as String,
      bmiRange: map['bmiRange'] as String,
      message: map['message'] as String,
      tips: List<String>.from((map['tips'] as List<String>)),
    );
  }
}

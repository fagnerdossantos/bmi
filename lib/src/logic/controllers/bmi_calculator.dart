import 'package:bmi/src/data/bmi_stats.dart';
import 'package:bmi/src/logic/models/stats_model.dart';

class BMICalculator with _BMIToLabel {
  //
  StatsModel call({required double height, required double weight}) {
    final double convertedHeight = height / 100;

    final double bmi = ((weight) / (convertedHeight * convertedHeight));

    final BMIStatsLabel classification = bmiToLabel(bmi: bmi);

    final Map<String, dynamic> statusList = bmiStatsList[classification.labelEN]!;
    statusList["bmi"] = double.parse(bmi.toStringAsFixed(1));
    statusList["classification"] = classification.labelPT;

    return StatsModel.fromMap(statusList);
  }
}

mixin _BMIToLabel {
  BMIStatsLabel bmiToLabel({required double bmi}) {
    return switch (bmi) {
      < 18.5 => BMIStatsLabel.underweight,
      >= 18.5 && <= 24.9 => BMIStatsLabel.normal,
      >= 25 && <= 29.9 => BMIStatsLabel.overweight,
      >= 30 && <= 39.9 => BMIStatsLabel.obesity,
      > 39.9 => BMIStatsLabel.severeObesity,
      _ => BMIStatsLabel.severeObesity,
    };
  }
}

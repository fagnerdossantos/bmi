class BMICalculator with _BMIStats {
  call({required double height, required double weight}) {
    return (weight / (height * height));
  }
}

mixin _BMIStats {
  int bmiToIndex({required double bmi}) {
    return switch (bmi) {
      < 18.5 => 0,
      >= 18.5 && <= 24.9 => 1,
      >= 25 && <= 29.9 => 2,
      >= 30 && <= 39.9 => 3,
      > 39.9 => 4,
      _ => 5,
    };
  }
}

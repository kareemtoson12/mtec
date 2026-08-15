// Karim Toson || kareemtoson1@gmail.com || Sat Aug 15 2026 20:07:14

class BmiResult {
  final String result;
  final double value;
  final String description;

  const BmiResult({
    required this.result,
    required this.value,
    required this.description,
  });
}

BmiResult calculateBmi({
  required String genderNameSelected,
  required double heightValue,
  required int weightValue,
  required int ageValue,
}) {
  // Height is in cm, convert to meters
  final double heightInMeters = heightValue / 100;

  // BMI = weight / height²
  final double bmi = weightValue / (heightInMeters * heightInMeters);

  String result;
  String description;

  if (bmi < 18.5) {
    result = 'Underweight';
    description = 'You are below the normal weight range.';
  } else if (bmi < 25) {
    result = 'Normal';
    description = 'You have a normal body weight. Good job!';
  } else if (bmi < 30) {
    result = 'Overweight';
    description = 'You are above the normal weight range.';
  } else {
    result = 'Obese';
    description = 'You are significantly above the normal weight range.';
  }

  return BmiResult(
    result: result,
    value: double.parse(bmi.toStringAsFixed(1)),
    description: description,
  );
}

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/values_controller.dart';

class AgeText extends StatelessWidget {
  const AgeText({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ValuesController>();

    return Text(
      controller.age.toString(),
      style: const TextStyle(fontSize: 20),
    );
  }
}

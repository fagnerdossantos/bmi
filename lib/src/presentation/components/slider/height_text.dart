import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/values_controller.dart';

class HeightText extends StatelessWidget {
  const HeightText({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    final controller = context.watch<ValuesController>();

    return Text(
      controller.height.toStringAsPrecision(3).replaceAll(".", ","),
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }
}

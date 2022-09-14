import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/values_controller.dart';

class WeightPicker extends StatelessWidget {
  final Size size;

  const WeightPicker({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;

    // Controller
    final controller = context.read<ValuesController>();

    return ListView(
      children: [
        CupertinoPicker(
          itemExtent: height * .053,
          looping: true,
          onSelectedItemChanged: (int value) {
            // Setting weight
            controller.newWeight(value);
          },
          children: [
            for (int i = 0; i <= 400; i++) Text("$i"),
          ],
        ),
      ],
    );
  }
}

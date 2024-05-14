import 'package:bmi/src/providers/app_provider.dart';
import 'package:flutter/material.dart';

import '../../../logic/controllers/height_controller.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final heightController = getIt<HeightController>();

    return ValueListenableBuilder(
      valueListenable: heightController,
      builder: (_, value, __) {
        return Slider(
          label: "Height",
          value: value,
          min: 80,
          max: 230,
          divisions: 150,
          onChanged: (current) {
            heightController.update(current);
          },
        );
      },
    );
  }
}

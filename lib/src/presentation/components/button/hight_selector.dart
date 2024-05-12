import 'package:flutter/material.dart';

import '../../../logic/controllers/height_controller.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({
    super.key,
    required this.heightController,
  });

  final HeightController heightController;

  @override
  Widget build(BuildContext context) {
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

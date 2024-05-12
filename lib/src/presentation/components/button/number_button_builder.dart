import 'package:bmi/src/logic/controllers/weight_controller.dart';
import 'package:flutter/material.dart';

import 'delete_button.dart';
import 'number_button.dart';

class NumberButtonsBuilder extends StatelessWidget {
  final Size size;
  final WeightController controller;
  const NumberButtonsBuilder({
    super.key,
    required this.size,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    // Settings
    const double spacing = 2.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Delete
        DeleteButton(
          controller: controller,
        ),

        //
        const SizedBox(
          height: 10,
        ),

        // Number Buttons
        Wrap(
          // Alignments
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.center,

          spacing: spacing,
          runSpacing: spacing,

          children: [
            for (int i = 0; i < 10; i++)
              NumberButtons(
                size: size,
                label: "${i + 1}",
                callBack: () {
                  if (i == 9) {
                    controller.update("0");
                  } else {
                    controller.update((i + 1).toString());
                  }
                },
              ),
          ],
        ),
      ],
    );
  }
}

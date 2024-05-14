import 'package:bmi/src/providers/app_provider.dart';
import 'package:flutter/material.dart';

import '../../../logic/controllers/weight_controller.dart';

class WeightField extends StatelessWidget {
  const WeightField({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final controller = getIt<WeightController>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //
        Text(
          "Weight",
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),

        ValueListenableBuilder(
          valueListenable: controller,
          builder: (_, value, __) {
            // Some validations
            if (value.isEmpty) {
              value = "0";
            }

            if (value.length > 3) {
              value = value.substring(0, 3);
            }

            return Text(
              value,
              style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          },
        )
      ],
    );
  }
}

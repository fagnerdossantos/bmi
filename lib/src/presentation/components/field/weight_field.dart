import 'package:flutter/material.dart';

import '../../../logic/controllers/weight_controller.dart';

class WeightField extends StatelessWidget {
  final WeightController controller;
  const WeightField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    //

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

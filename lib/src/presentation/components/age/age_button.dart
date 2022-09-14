import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/values_controller.dart';

enum ButtonACtion {
  remove,
  add,
}

class AgeButton extends StatelessWidget {
  final ButtonACtion action;
  const AgeButton({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<ValuesController>();

    return GestureDetector(
      // Action
      onTap: () => action == ButtonACtion.remove
          ? controller.ageLess()
          : controller.ageMore(),

      // Icons
      child: action == ButtonACtion.remove
          ? const Icon(Icons.remove)
          : const Icon(Icons.add),
    );
  }
}

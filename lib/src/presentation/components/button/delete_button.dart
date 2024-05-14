import 'package:bmi/src/logic/controllers/weight_controller.dart';
import 'package:bmi/src/providers/app_provider.dart';
import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final controller = getIt<WeightController>();

    return TextButton.icon(
      // Action
      onPressed: controller.clear,

      //
      icon: const Icon(Icons.label_outline),
      label: const Text("DELETE"),
    );
  }
}

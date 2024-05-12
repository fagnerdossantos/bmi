import 'package:bmi/src/logic/controllers/weight_controller.dart';
import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  final WeightController controller;
  const DeleteButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      // Action
      onPressed: controller.clear,

      //
      icon: const Icon(Icons.label_outline),
      label: const Text("DELETE"),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/bmi_controller.dart';
import 'package:bmi/src/logic/controllers/values_controller.dart';
import 'package:bmi/src/logic/models/people_model.dart';
import 'package:bmi/src/presentation/components/modelBotomSheet/model_bottom_sheet.dart';
import 'package:bmi/utils/consts.dart';

class CalulateButton extends StatelessWidget {
  final Size size;

  const CalulateButton({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    // Controllers
    final bmiController = context.read<BMIController>();
    final valuesController = context.read<ValuesController>();
    PeopleModel model;

    return GestureDetector(
      // Action
      onTap: () {
        // Setting Values
        bmiController.height = valuesController.height;
        bmiController.weight = valuesController.weight.toDouble();

        // Calculating
        model = bmiController.calculateBMI();

        // Show Model
        modelBottomSheet(context, size, model);
      },

      // Content
      child: SizedBox(
        // Size
        height: height * .05,
        width: width,

        child: DecoratedBox(
          // Styling
          decoration: BoxDecoration(
            // Color
            color: black,

            // Shape
            borderRadius: radiusTwenty,
          ),

          child: const Center(
            child: Text(
              "Calcular",
              style: TextStyle(
                color: white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:bmi/src/logic/controllers/bmi_calculator.dart';
import 'package:bmi/src/logic/models/stats_model.dart';
import 'package:flutter/material.dart';

import '../../logic/controllers/height_controller.dart';
import '../../logic/controllers/weight_controller.dart';
import '../../providers/app_provider.dart';
import '../components/button/custom_button.dart';
import '../components/button/hight_selector.dart';
import '../components/button/number_button_builder.dart';
import '../components/field/height_field.dart';
import '../components/field/weight_field.dart';

class GetInfoView extends StatelessWidget {
  const GetInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers
    final heightController = getIt<HeightController>();
    final weightController = getIt<WeightController>();
    final bmiController = getIt<BMICalculator>();

    // Get Screen Size
    final Size size = MediaQuery.sizeOf(context);
    final (height, width) = (size.height, size.width);

    return Scaffold(
      //
      appBar: AppBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Height
          const Column(
            children: [
              HeightField(),
              HeightSelector(),
            ],
          ),

          SizedBox(
            height: height * .1,
          ),

          // Weight
          const WeightField(),

          SizedBox(height: height * .01),

          // Char buttons
          SizedBox(
            height: height * .5,
            width: width,

            // color: Colors.red,
            child: NumberButtonsBuilder(size: size),
          ),

          SizedBox(
            height: height * .02,
          ),

          CustomButton(
            icon: Icons.arrow_right,
            label: "Próximo",
            callBack: () {
              //
              final double height = heightController.value;
              final double weight =
                  double.tryParse(weightController.value) ?? 0;

              if (weight >= 20) {
                final StatsModel model = bmiController(
                  height: height,
                  weight: weight,
                );

                weightController.reset();
                Navigator.pushNamed(context, "/result", arguments: model);
              }
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../logic/controllers/height_controller.dart';
import '../../logic/controllers/weight_controller.dart';
import '../components/button/button_navigation.dart';
import '../components/button/hight_selector.dart';
import '../components/button/number_button_builder.dart';
import '../components/field/height_field.dart';
import '../components/field/weight_field.dart';

class GetInfoView extends StatelessWidget {
  const GetInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers
    final heightController = HeightController();
    final weightController = WeightController();

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
          Column(
            children: [
              HeightField(heightController: heightController),
              HeightSelector(heightController: heightController),
            ],
          ),

          SizedBox(
            height: height * .1,
          ),

          // Weight
          WeightField(controller: weightController),

          SizedBox(
            height: height * .05,
          ),

          // Char buttons
          SizedBox(
            height: height * .5,
            width: width,

            // color: Colors.red,
            child: NumberButtonsBuilder(
              size: size,
              controller: weightController,
            ),
          ),

          SizedBox(
            height: height * .02,
          ),

          const ButtonNavigation(
            rout: "/result",
            label: "Next",
            icon: Icons.arrow_right,
          ),
        ],
      ),
    );
  }
}
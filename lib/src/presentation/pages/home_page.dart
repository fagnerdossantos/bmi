import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/values_controller.dart';
import 'package:bmi/src/presentation/components/age/age_box.dart';
import 'package:bmi/src/presentation/components/button/calculate_button.dart';
import 'package:bmi/src/presentation/components/image/show_image.dart';
import 'package:bmi/src/presentation/components/slider/height_slider_box.dart';
import 'package:bmi/src/presentation/components/weight/weight_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Screen size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      // Fill the entire screen
      body: SizedBox(
        // Size
        height: height,
        width: width,

        child: Padding(
          // Home Padding
          padding: const EdgeInsets.all(20.0),

          child: Column(
            // Alignment
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Presentation Text
              const Text(
                "Calculadora de IMC",
                style: TextStyle(fontSize: 20),
              ),

              // Home Image
              ShowImage(
                size: size,
                images: const [
                  "images/binary.png",
                  "images/neutral.jpg",
                ],
              ),

              // Height Slider
              HeightSliderBox(
                size: size,
              ),

              // Age and Weight boxes
              Row(
                // Alignment
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  // AGE BOX
                  AgeBox(size: size),

                  // WEIGHT BOX
                  WeightBox(
                    size: size,
                  ),
                ],
              ),

              CalulateButton(
                size: size,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

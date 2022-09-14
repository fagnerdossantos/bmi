import 'package:flutter/material.dart';

import 'package:bmi/src/presentation/components/slider/bar_row.dart';
import 'package:bmi/src/presentation/components/slider/height_slider.dart';
import 'package:bmi/src/presentation/components/slider/height_text.dart';

class HeightSliderBox extends StatelessWidget {
  final Size size;

  const HeightSliderBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return Container(
      // Size
      height: height * .18,
      width: width,

      // Padding
      padding: const EdgeInsets.all(2),

      // Styling
      decoration: BoxDecoration(
        // Border
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        // Alignment
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          // Show hight
          const HeightText(),

          // Slider
          const HeightSlider(),

          // Bar Row
          BarRow(size: size),
        ],
      ),
    );
  }
}

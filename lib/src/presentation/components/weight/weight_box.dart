import 'package:flutter/material.dart';

import 'package:bmi/src/presentation/components/weight/weight_picker.dart';

class WeightBox extends StatelessWidget {
  final Size size;

  const WeightBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return SizedBox(
      // Size
      height: height * .2,
      width: width * .4,

      child: DecoratedBox(
        // Styling
        decoration: BoxDecoration(
          // Shape
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),

          borderRadius: BorderRadius.circular(
            20,
          ),
        ),

        child: Column(
          // Alignment
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Label
            const Text("PESO (em kg)"),

            // Give Some Space
            SizedBox(
              height: height * .03,
            ),

            // Picker
            SizedBox(
              // Size
              height: height * .08,
              width: width * .25,

              child: WeightPicker(size: size),
            )
          ],
        ),
      ),
    );
  }
}

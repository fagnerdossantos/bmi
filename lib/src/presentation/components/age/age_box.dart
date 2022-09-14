import 'package:flutter/material.dart';

import 'package:bmi/src/presentation/components/age/age_button.dart';
import 'package:bmi/src/presentation/components/age/age_text.dart';

class AgeBox extends StatelessWidget {
  final Size size;
  const AgeBox({
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Label
            const Text("IDADE"),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                AgeButton(action: ButtonACtion.remove),
                AgeText(),
                AgeButton(action: ButtonACtion.add),
              ],
            )
          ],
        ),
      ),
    );
  }
}

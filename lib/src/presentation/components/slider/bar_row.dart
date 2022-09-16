import 'package:flutter/material.dart';

import 'package:bmi/utils/consts.dart';

class BarRow extends StatelessWidget {
  final Size size;
  const BarRow({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size

    final double height = size.height;
    final double width = size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Bar
        for (int i = 0; i < 20; i++)
          SizedBox(
            height: height * 0.05,
            width: width * 0.015,
            child: DecoratedBox(
              // Styling
              decoration: BoxDecoration(
                // Color
                color: grey,

                // Shape
                borderRadius: radiusTwenty,
              ),
            ),
          ),
      ],
    );
  }
}

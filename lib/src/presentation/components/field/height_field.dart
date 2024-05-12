import 'package:flutter/material.dart';

import '../../../logic/controllers/height_controller.dart';

class HeightField extends StatelessWidget {
  const HeightField({
    super.key,
    required this.heightController,
  });

  final HeightController heightController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: heightController,
      builder: (_, value, __) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hight",
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Text(
              "${value.toInt()} cm",
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        );
      },
    );
  }
}

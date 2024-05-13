import 'package:bmi/src/logic/models/stats_model.dart';
import 'package:flutter/material.dart';

tipsBottomSheet(BuildContext context, Size size, StatsModel model) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Range
            Text(
              model.bmiRange,
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),

            for (String tip in model.tips)
              // Tips
              Text(
                tip,
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      );
    },
  );
}

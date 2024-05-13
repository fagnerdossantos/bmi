// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi/src/logic/models/stats_model.dart';
import 'package:bmi/src/presentation/components/bottomSheet/tips_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../components/graphic/custom_circle_graphic.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Screen Size
    final Size size = MediaQuery.sizeOf(context);
    final (height, width) = (size.height, size.width);

    final model = ModalRoute.of(context)!.settings.arguments as StatsModel;

    return Scaffold(
      // Bar
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
      ),

      //
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPaint(
                  size: Size(width * .6, height * .3),
                  painter: CustomCircleGraph(
                    bmi: model.bmi,
                    context: context,
                  ),
                ),
              ],
            ),

            Text(
              model.classification.toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              model.message,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),

            TextButton.icon(
              onPressed: () => tipsBottomSheet(context, size, model),
              icon: const Icon(Icons.lightbulb),
              label: const Text("Tips"),
            ),
          ],
        ),
      ),
    );
  }
}

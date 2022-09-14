import 'package:flutter/material.dart';

import 'package:bmi/src/logic/models/people_model.dart';

modelBottomSheet(BuildContext context, Size size, PeopleModel model) {
  List<String> modelData = [
    "Altura -> ${model.height.toStringAsPrecision(3)}",
    "Peso -> ${model.weight.toInt()}",
    "IMC -> ${model.bmi.toStringAsPrecision(3)}",
    "Status -> ${model.result}",
  ];

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Show Model Info
          SizedBox(
            // Size
            height: size.height * 0.4,

            // List Builder
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    modelData[index],
                    style: TextStyle(fontSize: size.height * .03),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),

          // Button
          SizedBox(
            // Size
            height: size.height * 0.03,
            width: size.width * 0.3,

            child: DecoratedBox(
              // Styling
              decoration: BoxDecoration(
                // Color
                color: Colors.black,

                // Shape
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                // Action
                onTap: () => Navigator.pop(context),

                // Label
                child: const Center(
                  child: Text(
                    "FECHAR",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}

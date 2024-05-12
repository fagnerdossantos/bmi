import 'package:flutter/material.dart';

class NumberButtons extends StatelessWidget {
  final Size size;
  final String label;
  final Function() callBack;
  const NumberButtons({
    super.key,
    required this.size,
    required this.label,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    // Size
    final (height, width) = (size.height, size.width);

    final String char = int.parse(label) < 10 ? label : "0";

    return InkWell(

      // Action
      onTap: callBack,
      
      // Content
      child: SizedBox(
        // Sizing
        height: height * .1,
        width: width * .32,
      
        child: Card(
          elevation: 3,
          child: Center(
            child: Text(char),
          ),
        ),
      ),
    );
  }
}

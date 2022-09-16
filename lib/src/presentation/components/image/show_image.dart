import 'package:flutter/material.dart';

import 'package:bmi/utils/consts.dart';

class ShowImage extends StatelessWidget {
  final Size size;
  final List<String> images;
  const ShowImage({
    super.key,
    required this.size,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final double height = size.height;
    final double width = size.width;

    return Container(
      // Size
      height: height * .3,
      width: width,

      // Padding
      padding: paddingTwenty,

      // Styling
      decoration: BoxDecoration(
        // Border
        border: Border.all(
          color: black,
          width: 1,
        ),
        borderRadius: radiusTwenty,
      ),

      child: Row(
        // Alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (String image in images)
            Image(
              image: AssetImage(
                image,
              ),
              height: height * .2,
              width: width * .3,
              color: grey,
            ),
        ],
      ),
    );
  }
}

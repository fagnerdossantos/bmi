import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/button/text_navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "images/bmi-bg.svg",
              height: 250,
              width: double.infinity,
            ),
            Column(
              children: [
                Text(
                  "Ready to measure your BMI?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Text(
                  "Click the button below",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),

            //
            const TextNavigation(
              rout: "/get_info",
              label: "Vamos Começar",
              icon: Icons.start,
            ),
          ],
        ),
      ),
    );
  }
}

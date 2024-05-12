// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../components/graphic/custom_circle_graphic.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Screen Size
    final Size size = MediaQuery.sizeOf(context);
    final (height, width) = (size.height, size.width);

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
                    bmi: 25,
                    context: context,
                  ),
                ),
              ],
            ),

            Text(
              "Magreza",
              style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w700),
            ),

            Text(
              texts[0],
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),

            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.lightbulb),
              label: const Text("Tips"),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> texts = [
  "Seu IMC indica que você está abaixo do peso ideal. É importante buscar orientação médica e nutricional para garantir uma alimentação saudável e balanceada, evitando riscos à saúde.",
  """Aumente o consumo de calorias de forma saudável, incluindo alimentos ricos em proteínas, carboidratos complexos e gorduras boas.
Consulte um nutricionista para elaborar um plano alimentar personalizado.
Pratique exercícios físicos regularmente, mas com acompanhamento profissional se necessário.
Evite dietas restritivas e foque em uma alimentação completa e nutritiva.""",
];

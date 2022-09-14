import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/bmi_controller.dart';
import 'package:bmi/src/logic/controllers/values_controller.dart';
import 'package:bmi/src/logic/models/bmi_model.dart';
import 'package:bmi/src/logic/models/people_model.dart';

import 'src/presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Model
        Provider(create: (_) => BMIModel()),

        // Controller
        Provider(
          create: (context) => BMIController(model: context.read<BMIModel>()),
        ),

        // Notifiers
        ChangeNotifierProvider(
          create: (_) => ValuesController(),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

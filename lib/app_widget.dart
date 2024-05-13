import 'package:bmi/src/presentation/pages/get_info_view.dart';
import 'package:bmi/src/presentation/pages/home_view.dart';
import 'package:bmi/src/presentation/pages/result_view.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => const HomeView(),
        "/get_info": (_) => const GetInfoView(),
        "/result": (_) => const ResultView(),
      },

      debugShowCheckedModeBanner: false,
    );
  }
}

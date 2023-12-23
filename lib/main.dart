import 'package:flutter/material.dart';
import 'package:flutter_serenity_space_login/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Serenity Space App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Rubik",
        primaryColor: const Color(0xFF3D9AE2),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF3D9AE2),
          secondary: Color(0xFF061017),
        ),
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
    );
  }
}

import 'package:arbeit/features/authentication/screens/fir_onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arbeit',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0Xffffffff),
        colorScheme: .fromSeed(seedColor: Color(0xff0056D2)),
        // focused: .fromSeed(seedColor: Color(0xff0056D2)),
        fontFamily: "Axiforma",
      ),
      home: const FirOnboardingScreen(),
    );
  }
}

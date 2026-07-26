import 'package:arbeit/features/authentication/screens/fir_onboarding_screen.dart';
import 'package:arbeit/features/authentication/screens/sec_onboarding_screen.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Axiforma",
      ),
      home: const FirOnboardingScreen(),
    );
  }
}

import 'package:arbeit/features/authentication/screens/sec_onboarding_screen.dart';
import 'package:flutter/material.dart';

class FirOnboardingScreen extends StatefulWidget {
  const FirOnboardingScreen({super.key});

  @override
  State<FirOnboardingScreen> createState() => _FirOnboardingScreenState();
}

class _FirOnboardingScreenState extends State<FirOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 466,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromRGBO(0, 86, 210, 0.1)),
            child: Positioned(
              right: 0,
              child: Image.asset(
                "assets/images/fir_onboard_img.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 70),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Monitor your \njob application",
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0Xff0056D2),
                      fontWeight: FontWeight(800),
                      fontSize: 30,
                      height: 1.1,
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight(400),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40),

          SizedBox(
            height: 35 / 812 * size.height,
            width: 69 / 375 * size.width,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => SecOnboardingScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0056D2),
                foregroundColor: Color(0Xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontWeight: FontWeight(700), fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:arbeit/features/authentication/screens/get_started_screen.dart';
import 'package:arbeit/features/authentication/screens/login_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class SecOnboardingScreen extends StatefulWidget {
  const SecOnboardingScreen({super.key});

  @override
  State<SecOnboardingScreen> createState() => _SecOnboardingScreenState();
}

class _SecOnboardingScreenState extends State<SecOnboardingScreen> {
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
              left: 0,
              top: 0,
              child: Image.asset(
                "assets/images/sec_onboard_img.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Job recommendation \nwith salary",
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0Xff0056D2),
                      fontWeight: FontWeight(800),
                      fontSize: 30,
                      height: 1.1,
                    ),
                  ),
                ),

                SizedBox(height: 5),

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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //login button
              SizedBox(
                height: 35 / 812 * size.height,
                width: 80 / 375 * size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0056D2),
                    foregroundColor: Color(0Xffffffff),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight(700), fontSize: 11),
                  ),
                ),
              ),

              SizedBox(width: 10),

              //get started button
              SizedBox(
                height: 35 / 812 * size.height,
                width: 120 / 375 * size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => GetStartedScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffffffff),
                    foregroundColor: Color(0Xff0056D2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0Xff0056D2), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontWeight: FontWeight(700), fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

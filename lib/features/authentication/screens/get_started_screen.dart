import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:arbeit/features/authentication/screens/terms_conditions.dart';
import 'package:arbeit/features/authentication/screens/privacy_policy.dart';
import 'package:arbeit/features/authentication/screens/signup_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/logo.png")),
          SizedBox(height: 15),

          Text("How do you want to be part of us"),

          SizedBox(height: 64),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/google_icon.svg"),
              SizedBox(width: 10),
              Text("Continue with google"),
            ],
          ),

          SizedBox(height: 190),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account?"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text(
                      "Register here",
                      style: TextStyle(
                        color: Color(0xff0056D2),
                        fontWeight: FontWeight(600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40),

          Text("By creating an account, you accept Job Finder's"),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TermsConditionsScreen(),
                    ),
                  );
                },
                child: Text(
                  "Terms of Service",
                  style: TextStyle(
                    color: Color(0xff0056D2),
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text("and"),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                    );
                  },
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Color(0xff0056D2),
                      fontWeight: FontWeight(600),
                    ),
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

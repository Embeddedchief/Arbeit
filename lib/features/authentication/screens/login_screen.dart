import 'package:flutter/material.dart';
import 'package:arbeit/features/authentication/screens/homepage_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        //Why my widget didnt get centralized in a column with crossAxis set to center
        children: [
          SizedBox(height: 152),
          Center(child: Image.asset("assets/images/logo.png")),
          SizedBox(height: 15),
          Text("Login to your account"),

          const SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email(Required)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0Xff0056D2),
                        width: 1,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password(Required)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color(0Xff0056D2)),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                SizedBox(
                  height: 47 / 812 * size.height,
                  width: 323 / 375 * size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => HomepageScreen()),
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
                      style: TextStyle(
                        fontWeight: FontWeight(700),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have an account?"),
              const SizedBox(width: 5),
              Text(
                "Register here",
                style: TextStyle(color: Color(0xff0056D2), fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 40),

          Column(
            children: [
              Text(
                "By creating an account, you accept Job finder`s",
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(width: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Terms of Service",
                    style: TextStyle(color: Color(0xff0056D2), fontSize: 12),
                  ),

                  const SizedBox(width: 4),

                  Text("and", style: TextStyle(fontSize: 12)),

                  const SizedBox(width: 4),

                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 12, color: Color(0Xff0056D2)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

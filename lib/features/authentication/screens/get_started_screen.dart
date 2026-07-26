import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/logo.png")),
              SizedBox(height: 15),

              Text("How do you want to be part of us"),

              SizedBox(height: 20, child: Text("Continue with google")),

              Center(
                child: Row(
                  children: [
                    Text("Dont have an account?"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Register here",
                        style: TextStyle(
                          color: Color(0xff0056D2),
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),

              Text("By creating an account, you accept Job Finder's"),

              Row(
                children: [
                  Text(
                    "Terms of Service",
                    style: TextStyle(
                      color: Color(0xff0056D2),
                      fontWeight: FontWeight(600),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text("and"),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                        color: Color(0xff0056D2),
                        fontWeight: FontWeight(600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

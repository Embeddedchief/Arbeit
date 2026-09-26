import 'package:flutter/material.dart';
import 'package:arbeit/features/navigations/screens/homepage_screen.dart';
import 'package:arbeit/features/authentication/screens/login_screen.dart';
import 'package:arbeit/features/authentication/screens/terms_conditions.dart';
import 'package:arbeit/features/authentication/screens/privacy_policy.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //Why my widget didnt get centralized in a column with crossAxis set to center
          children: [
            SizedBox(height: 152),
            Center(child: Image.asset("assets/images/logo.png")),
            SizedBox(height: 15),
            Text("Create an account"),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Full name(Required)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xff0056D2),
                          width: 2,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email(Required)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0Xff0056D2),
                          width: 2,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    obscureText: isInvisible,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Password(Required)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color(0xff0056d2)),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isInvisible = !isInvisible;
                          });
                        },
                        icon: Icon(
                          isInvisible ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),

                  // TextFormField(
                  //   obscureText: !isVisible,
                  //   keyboardType: TextInputType.visiblePassword,
                  //   decoration: InputDecoration(
                  //     labelText: "Password(Required)",
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(20),
                  //       borderSide: BorderSide(color: Color(0Xff0056D2)),
                  //     ),
                  //     suffixIcon: IconButton(
                  //       onPressed: () {
                  //         setState(() {
                  //           isVisible = !isVisible;
                  //         });
                  //       },
                  //       icon: Icon(
                  //         isVisible ? Icons.visibility : Icons.visibility_off,
                  //         color: Color(0Xff818080),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 30),

                  SizedBox(
                    height: 47 / 812 * size.height,
                    width: 323 / 375 * size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => NavigationWidget()),
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
                        'Create an Account',
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

            SizedBox(height: 30),

            Text("Or"),

            SizedBox(height: 15),

            Column(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Color(0xff0056D2), fontSize: 12),
                  ),
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
                          fontSize: 12,
                        ),
                      ),
                    ),

                    const SizedBox(width: 4),

                    Text("and", style: TextStyle(fontSize: 12)),

                    const SizedBox(width: 4),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyPolicy(),
                          ),
                        );
                      },
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0Xff0056D2),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 90),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Hello Cole",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    SizedBox(width: 143),
                    SvgPicture.asset("assets/icons/alert_icon.svg"),
                    SizedBox(width: 13),
                    SvgPicture.asset("assets/icons/menu_icon.svg"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Search Jobs, positions.......",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    // SvgPicture.asset("assets/icons/search_icon.svg"),
                    SizedBox(width: 19),

                    SvgPicture.asset("assets/icons/filter_icon.svg"),

                    SizedBox(width: 8),

                    SvgPicture.asset("assets/icons/vertical_menu_icon.svg"),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("Daily Job Tips"),
                    SizedBox(width: 170),
                    Text("See all"),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 124,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 86, 210, 0.1),
                      ),
                      child: Image.asset("assets/images/homescreen_img1.png"),
                    ),

                    SizedBox(width: 20),

                    Container(
                      width: 200,
                      height: 124,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 86, 210, 0.1),
                      ),
                      child: Image.asset("assets/images/homescreen_img3.png"),
                    ),

                    SizedBox(width: 20),

                    Container(
                      width: 200,
                      height: 124,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 86, 210, 0.1),
                      ),
                      child: Image.asset("assets/images/homescreen_img2.png"),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Text("Recommended for you"),

                      SizedBox(width: 109),

                      Text("See all"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

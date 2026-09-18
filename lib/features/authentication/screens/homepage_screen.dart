import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:arbeit/features/authentication/screens/sec_onboarding_screen.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 124,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 86, 210, 0.1),
                          ),
                          child: Image.asset(
                            "assets/images/homescreen_img1.png",
                          ),
                        ),

                        SizedBox(width: 20),

                        Container(
                          width: 200,
                          height: 124,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 86, 210, 0.1),
                          ),
                          child: Image.asset(
                            "assets/images/homescreen_img3.png",
                          ),
                        ),

                        SizedBox(width: 20),

                        Container(
                          width: 200,
                          height: 124,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 86, 210, 0.1),
                          ),
                          child: Image.asset(
                            "assets/images/homescreen_img2.png",
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  Row(
                    children: [
                      Text("Recommended for you"),
                      SizedBox(width: 109),
                      Text("See all"),
                    ],
                  ),

                  SizedBox(height: 20),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30 / 812 * size.height,
                          width: 60 / 375 * size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SecOnboardingScreen(),
                                ),
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
                              'All Jobs',
                              style: TextStyle(
                                fontWeight: FontWeight(800),
                                fontSize: 4,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15),

                        SizedBox(
                          height: 30,
                          width: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SecOnboardingScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffffffff),
                              foregroundColor: Color(0xff0056D2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Design',
                              style: TextStyle(
                                fontWeight: FontWeight(800),
                                fontSize: 4,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15),

                        SizedBox(
                          height: 30,
                          width: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SecOnboardingScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffffffff),
                              foregroundColor: Color(0xff0056D2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Strategy',
                              style: TextStyle(
                                fontWeight: FontWeight(800),
                                fontSize: 4,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15),

                        SizedBox(
                          height: 30,
                          width: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SecOnboardingScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffffffff),
                              foregroundColor: Color(0xff0056D2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Programming',
                              style: TextStyle(
                                fontWeight: FontWeight(800),
                                fontSize: 4,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15),

                        SizedBox(
                          height: 30,
                          width: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SecOnboardingScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffffffff),
                              foregroundColor: Color(0xff0056D2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Tourist destinations',
                              style: TextStyle(
                                fontWeight: FontWeight(800),
                                fontSize: 4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: 115 / 375 * size.height,
                  height: 328 / 812 * size.width,
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Text("Senior Product Designer at Facebook"),

                      SizedBox(height: 7),

                      Row(
                        children: [
                          Text("\$3,000 - \$4,000 / Month"),
                          SizedBox(width: 15),
                          Text("Figma - XD-UI/UX"),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Text("Cairo(Remote) - Fulltime"),
                          SizedBox(width: 15),
                          Text("Today"),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                
                Container(
                  height: 328 / 812 * size.height,
                  width: 115 / 375 * size.width,
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Text(
                        "Junior Graphic Designer at South Dakota University",
                      ),

                      Row(
                        children: [
                          Text("\$2,500 - \$3,000 / Month"),
                          SizedBox(width: 15),
                          Text("Photoshop - Illustrator"),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Text("South Dakota - Fulltime"),
                          SizedBox(width: 15),
                          Text("Today"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

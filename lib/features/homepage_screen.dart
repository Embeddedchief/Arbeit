import 'package:arbeit/features/applications/screens/application_screen.dart';
import 'package:arbeit/features/messages/screens/messages_screen.dart';
import 'package:arbeit/features/profiles/screens/profile_screen.dart';
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
                      Text(
                        "Daily Job Tips",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight(700),
                        ),
                      ),

                      SizedBox(width: 170),

                      Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff0056D2),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        jobTipsWidget("assets/images/homescreen_img1.png"),

                        SizedBox(width: 20),

                        jobTipsWidget(
                          "assets/images/homescreen_img3.png",
                          'How to build a strong online and PDF portfolio',
                        ),

                        SizedBox(width: 20),

                        jobTipsWidget("assets/images/homescreen_img2.png"),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  Row(
                    children: [
                      Text(
                        "Recommended for you",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                      SizedBox(width: 109),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff0056D2),
                        ),
                      ),
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
                jobDescription(
                  title: 'Senior Product Designer at Facebook',
                  amount: '\$3 000 - \$4 000 / Month',
                  location: 'Cairo (Remote) - Full time',
                  category: 'Figma - XD - UI/UX',
                  imagePath: 'asset/images/logo.png',
                  isFav: true,
                ),

                SizedBox(height: 20),

                jobDescription(
                  title: 'Senior Product Designer at Facebook',
                  amount: '\$3 000 - \$4 000 / Month',
                  location: 'Cairo (Remote) - Full time',
                  category: 'Figma - XD - UI/UX',
                  imagePath: 'asset/images/logo.png',
                  isFav: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//jobTipsWidget template class
Widget jobTipsWidget(String imagePath, [String? bodyText]) {
  return Container(
    //width: 200,
    height: 124,
    decoration: BoxDecoration(
      color: Color.fromRGBO(0, 86, 210, 0.1),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Stack(
      children: [
        Image.asset(imagePath, fit: BoxFit.cover),
        if (bodyText != null)
          Positioned(
            bottom: 21,
            left: 20,
            child: Text(
              bodyText,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
      ],
    ),
  );
}

//job description template class
Widget jobDescription({
  required String title,
  required String amount,
  required String location,
  required String category,
  required String imagePath,
  required bool isFav,
}) {
  return Container(
    width: 115 / 375,
    height: 328 / 812,
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
  );
}

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  final List<Widget> pages = [
    HomepageScreen(),
    ApplicationScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 6, 83, 215),
        unselectedItemColor: const Color.fromRGBO(0, 86, 210, 0.5),

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            activeIcon: Icon(Icons.menu_rounded),
            label: 'Applications',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            activeIcon: Icon(Icons.message_rounded),
            label: 'Messages',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person_2_rounded),
            label: 'Profile',
          ),
        ],

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

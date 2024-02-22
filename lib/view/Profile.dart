import 'package:flutter/material.dart';
import 'package:profile_page/widgets/details.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Color colorDark = const Color(0xFF282828);
  final Color colorlight = const Color(0xFF8d8d8d);
  final Color backgroundColorDark = const Color(0xFF171b16);
  final Color backgroundColorLight = const Color(0xFFc1c1c7);
  bool isDark = false;
  int currentIndex = 3;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? backgroundColorDark : backgroundColorLight,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: isDark ? colorDark : colorlight,
                  borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(
              height: 20,
            ),
            Card_Container(
              height: 310,
              isDarkMode: isDark,
              colorlight: colorlight,
              colorDark: colorDark,
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 50,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/1.jpg"),
                        radius: 49,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Walid Besheer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: detailWidget(
                            icon: Icons.calendar_month,
                            title: "Age",
                            number: 18,
                            unit: "years",
                            color: Color(0xFFcee3f8),
                            iconColor: Colors.blueAccent,
                            borderColor: Color(0xFF5583cb),
                          ),
                        ),
                        Expanded(
                          child: detailWidget(
                            icon: Icons.balance,
                            title: "Weight",
                            number: 53,
                            unit: "Kg",
                            color: Color(0xFFc6efc5),
                            iconColor: Colors.green,
                            borderColor: Color(0xFF79bd7f),
                          ),
                        ),
                        Expanded(
                          child: detailWidget(
                            icon: Icons.height,
                            title: "Height",
                            number: 175,
                            unit: "Cm",
                            color: Color(0xFFffe7c5),
                            iconColor: Colors.amber,
                            borderColor: Color(0xFFe5a33d),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Card_Container(
              height: 150,
              isDarkMode: isDark,
              colorlight: colorlight,
              colorDark: colorDark,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          isDark ? "Dark Theme" : "Light Theme",
                          style: TextStyle(
                            fontSize: 20,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Switch(
                          activeColor: Colors.blue.shade600,
                          value: isDark,
                          onChanged: (value) {
                            setState(
                              () {
                                isDark = !isDark;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 0.3,
                      color: isDark ? Colors.white : Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "English",
                          style: TextStyle(
                            fontSize: 20,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Card_Container(
              height: 70,
              isDarkMode: isDark,
              colorlight: colorlight,
              colorDark: colorDark,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 20,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
              backgroundColor: isDark ? colorDark : colorlight,
              selectedItemColor: Colors.white,
              unselectedItemColor: const Color(0xFFc9c9c9),
              currentIndex: currentIndex,
              onTap: onTap,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.analytics,
                  ),
                  label: 'Analytics',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.delete_forever),
                  label: 'Prescriptions',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                )
              ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:profile/widgets/custom_item.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int currentIndex = 3;
  final Color contColorDark = const Color(0xFF282828);
  final Color contColorlight = const Color(0xFF8d8d8d);
  bool isLight = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isLight ? const Color(0xFFc0c0c0) : const Color(0xFF171c18),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 350,
                width: 330,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 3.8),
                          color: Colors.grey,
                          blurRadius: 7,
                          spreadRadius: 0.5)
                    ],
                    color: isLight ? contColorlight : contColorDark,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 65,
                      child: CircleAvatar(
                        radius: 64,
                        backgroundImage: AssetImage('assets/photo.jpg'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mahmoud Hafez',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w200,
                        color: isLight ? Colors.black : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomWidget(
                          iconData: Icons.calendar_month,
                          subTitle: '26',
                          title: 'Age',
                          unit: "years",
                          color: Color(0xFFcee3f8),
                          colorIcon: Colors.blueAccent,
                          borderColor: Color(0xFF5583cb),
                        ),
                        CustomWidget(
                          iconData: Icons.balance,
                          subTitle: '78',
                          title: 'Weight',
                          unit: "kg",
                          color: Color(0xFFc6efc5),
                          colorIcon: Colors.green,
                          borderColor: Color(0xFF79bd7f),
                        ),
                        CustomWidget(
                          iconData: Icons.topic_rounded,
                          subTitle: '179',
                          title: 'Height',
                          unit: "cm",
                          color: Color(0xFFffe7c5),
                          colorIcon: Colors.amber,
                          borderColor: Color(0xFFe5a33d),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: 330,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 3.8),
                        color: Colors.grey,
                        blurRadius: 7,
                        spreadRadius: 0.5)
                  ],
                  color: isLight ? contColorlight : contColorDark,
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      const Icon(
                        Icons.sunny,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text('Light Theme',
                          style: TextStyle(
                            fontSize: 20,
                            color: isLight ? Colors.black : Colors.white,
                          )),
                      const Spacer(
                        flex: 5,
                      ),
                      Switch(
                        activeColor: Colors.lightBlue,
                        value: isLight,
                        onChanged: (value) {
                          setState(
                            () {
                              isLight = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Divider(
                    endIndent: 20,
                    thickness: 0.5,
                    indent: 20,
                    color: isLight ? Colors.black : Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 17,
                      ),
                      Image.asset(
                        'assets/Earth.png',
                        height: 24,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Text('English',
                          style: TextStyle(
                            fontSize: 20,
                            color: isLight ? Colors.black : Colors.white,
                          )),
                      const Spacer(
                        flex: 5,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3.8),
                      color: Colors.grey,
                      blurRadius: 7,
                      spreadRadius: 0.5)
                ],
                color: isLight ? contColorlight : contColorDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      width: 14,
                    ),
                  ),
                  Icon(
                    Icons.logout,
                    size: 28,
                    color: isLight ? Colors.black : Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 16,
                        color: isLight ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 7, spreadRadius: 0.5)
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
              backgroundColor: isLight ? contColorlight : contColorDark,
              selectedItemColor: Colors.white,
              unselectedItemColor: const Color(0xFFc9c9c9),
              currentIndex: currentIndex = currentIndex,
              onTap: onTap,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.analytics_outlined),
                  label: 'Analytics',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.oil_barrel_outlined),
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

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

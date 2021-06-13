import 'package:final_project/Screens/Dashboard/components/bottom_nav_bar.dart';
import 'package:final_project/Screens/Dashboard/components/menu_card.dart';
import 'package:final_project/Screens/Khs/khs_screen.dart';
import 'package:final_project/Screens/Login/login_screen.dart';
import 'package:final_project/Screens/Profile/profile_screen.dart';
import 'package:final_project/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFF7F35B5),
              // color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          // color: Color(0xFF620AA1),
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/shutdown-30.svg",
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Selamat Datang \nEka Saputra",
                    style: Theme.of(context).textTheme.display1.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        MenuCard(
                          svgSrc: "assets/icons/Hamburger.svg",
                          title: "Profilku",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ProfileScreen();
                              }),
                            );
                          },
                        ),
                        MenuCard(
                          svgSrc: "assets/icons/Excrecises.svg",
                          title: "KRS",
                          press: () {},
                        ),
                        MenuCard(
                          svgSrc: "assets/icons/Meditation.svg",
                          title: "KHS",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return KhsScreen();
                              }),
                            );
                          },
                        ),
                        MenuCard(
                          svgSrc: "assets/icons/yoga.svg",
                          title: "Tentang",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

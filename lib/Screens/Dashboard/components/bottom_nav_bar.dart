import 'package:final_project/Screens/About/about_screen.dart';
import 'package:final_project/Screens/Dashboard/components/bottom_nav_item.dart';
import 'package:final_project/Screens/Khs/khs_semester.dart';
import 'package:final_project/Screens/Krs/krs_screen.dart';
import 'package:final_project/Screens/Login/login_screen.dart';
import 'package:final_project/Screens/Profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 75,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // BottomNavItem(
          //   svgSrc: "assets/icons/gym.svg",
          //   title: "Dashboard",
          //   press: () {},
          //   isActive: true,
          // ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Profilku",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ProfileScreen();
                }),
              );
            },
            isActive: false,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/calendar.svg",
            title: "KRS",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return KrsScreen();
                }),
              );
            },
            isActive: false,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "KHS",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return KhsSemester();
                }),
              );
            },
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Tentang",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutScreen();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

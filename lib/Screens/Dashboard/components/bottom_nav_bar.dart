import 'package:final_project/Screens/Dashboard/components/bottom_nav_item.dart';
import 'package:final_project/Screens/Login/login_screen.dart';
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
            press: () {},
            isActive: true,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/calendar.svg",
            title: "KRS",
            press: () {},
            isActive: false,
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "KHS",
            press: () {},
          ),
          BottomNavItem(
            svgSrc: "assets/icons/Settings.svg",
            title: "Tentang",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/enums.dart';
import 'package:ui_ecommerce/screens/favourite/favourite_screen.dart';
import 'package:ui_ecommerce/screens/home/home_screen.dart';
import 'package:ui_ecommerce/screens/profile/profile_screen.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.menu,
  });

  final MenuState menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.30))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color:
                    MenuState.home == menu ? kPrimaryColor : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, FavouriteScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
               color:
                    MenuState.favorite == menu 
                    ? const Color.fromARGB(255, 248, 78, 78) 
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg")),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == menu
                    ? const Color.fromARGB(255, 218, 51, 233)
                    : inActiveIconColor,
              )),
        ],
      ),
    );
  }
}

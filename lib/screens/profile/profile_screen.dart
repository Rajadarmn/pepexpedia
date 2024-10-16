import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/custom_navigation_bar.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/enums.dart';
import 'package:ui_ecommerce/screens/profile/components/body.dart';


class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(menu: MenuState.profile),
    );
  }
}

AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      title:
          const Text(
            "Profile",
            style: TextStyle(
              color: kTextColor,
            ),
          ),
    );
  }
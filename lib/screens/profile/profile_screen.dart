import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/custom_navigation_bar.dart';
import 'package:ui_ecommerce/enums.dart';
import 'package:ui_ecommerce/screens/profile/components/body.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/state_management/theme_provider.dart';

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

  AppBar appBar(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      forceMaterialTransparency: true,
      leading: Container(),
      centerTitle: true,
      title: Text(
        "Profile",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      actions: [
        IconButton(
          onPressed: () {
            themeProvider.toggleTheme(false);
          },
          icon: Icon(
            themeProvider.isDarkMode ? Icons.wb_sunny : Icons.nightlight_round,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    );
  }
}

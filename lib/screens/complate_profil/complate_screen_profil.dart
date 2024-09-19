import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/complate_profil/components/body.dart';


class ComplateScreenProfil extends StatelessWidget {
  static String routeName = "complate_screen_profil";
  const ComplateScreenProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("complate profil"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
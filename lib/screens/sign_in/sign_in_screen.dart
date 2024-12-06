import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          "Sign In",
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          ),
          ),
        centerTitle: true,
        leading: Container(),
      ),
      body: Body(),
    );
  }
}
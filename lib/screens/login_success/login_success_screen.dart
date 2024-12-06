import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/login_success/components/body.dart';


class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Pepexpedia',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Body(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ui_ecommerce/sign_in/components/body.dart';



class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in"; //alamat untuk routes
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        centerTitle: true,
      ),
      body: Body() ,
    );
  }
}
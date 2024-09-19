import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/complate_profil/complate_screen_profil.dart';
import 'package:ui_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ui_ecommerce/screens/login_success/login_success_screen.dart';
import 'package:ui_ecommerce/screens/sign_up/sign_up_screen.dart';

import 'package:ui_ecommerce/screens/splash/splash_screen.dart';
import 'package:ui_ecommerce/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen() ,
  SignUpScreen.routeName: (context) => const SignUpScreen() ,
  ComplateScreenProfil.routeName: (context) => const ComplateScreenProfil() ,
};
import 'package:flutter/material.dart';
import 'package:ui_ecommerce/size_config.dart';

const kPrimaryColor = Color.fromARGB(255, 56, 244, 147);
const kPrimaryLightColor = Color(0xffffecdf);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromRGBO(255, 165, 62, 1),
    Color.fromARGB(255, 56, 244, 147),
  ],
);

const kSecondaryColor = Color(0xff979797);
const kTextColor = Color(0xff757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.5,
  );

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";

//complate profile
const String KNameNullError = "please enter your Name";
const String KPhoneNullError = "please enter your Phone number";
const String KAddressNullError = "please enter your Address";

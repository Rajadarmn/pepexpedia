import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/home/home_screen.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.07),
          Image.asset("assets/images/Hands Checkmark.png", width: 290, height: 280,),
          SizedBox(height: SizeConfig.screenHeight * 0.10),
          Text(
            "Login Success!",
            style: TextStyle(
              fontSize: getPropScreenWidth(33),
              fontWeight: FontWeight.bold,
              color: kTextColor
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: MyDefaultButton(
              text: "Back to Home",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
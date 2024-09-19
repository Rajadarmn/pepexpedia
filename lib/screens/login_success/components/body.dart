import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/default_button.dart';
import 'package:ui_ecommerce/size_config.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight *0.04,
          ),
          Image.asset("assets/images/success.png"),
          SizedBox(
            height: SizeConfig.screenWidth * 0.08,
          ),
          Text(
            "login success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(text: "back to home", press: () {}),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
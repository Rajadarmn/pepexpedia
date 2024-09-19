import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/social_media.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/sign_up/components/sign_up_form.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight *0.03,
              ),
              Text(
                "Register account",
              style: headingStyle,
              ),
              const Text(
                "if you not have account",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight *0.06,
              ),
              const SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight *0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(
                    icon: 'assets/icons/google-icon.svg',
                    press: (){},
                  ),
                  SocialMediaIcon(
                    icon: 'assets/icons/facebook-2.svg',
                    press: (){},
                  ),
                  SocialMediaIcon(
                    icon: 'assets/icons/twitter.svg',
                    press: (){},
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight *0.03,
              ),
              Text("by continuing your confirm that you agree \nwith out term and condition",
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight *0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




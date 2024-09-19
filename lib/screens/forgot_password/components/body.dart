import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/forgot_password/components/forgot_password_form.dart';
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
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text("forgot password", style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold),
             ),
             const Text(
              "please enter your email and we will send \nyou a link to return to your account",
             textAlign: TextAlign.center,
             ),
             SizedBox(
                height: SizeConfig.screenHeight * 0.06,
              ),
              const ForgotPasswordForm(),
              SizedBox(
                height: SizeConfig.screenHeight *0.06,
              ),
          
               dontHaveAccountText(),
            ],
          ),
        ),
      ),
    );
  }

  Row dontHaveAccountText() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have any account?"),
                GestureDetector(
                  onTap: (){},
                  child: Text("Sign up", style: TextStyle(
                    color: Colors.blue,
                  ),),
                ),
              ],
            );
  }
}

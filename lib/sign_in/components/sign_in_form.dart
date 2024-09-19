import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/costum_suffixicon.dart';
import 'package:ui_ecommerce/components/default_button.dart';
import 'package:ui_ecommerce/components/error_form.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ui_ecommerce/screens/login_success/login_success_screen.dart';
import 'package:ui_ecommerce/size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errors = [];
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formKey,
           child:Column(
              children: [
                //email field
                emailFormField(),
                SizedBox(height: getProportionateScreenHeight(30),),
                PasswordFormField(),
                SizedBox(height: getProportionateScreenHeight(30),),
                rememberAndForget(),
                SizedBox(height: getProportionateScreenHeight(20),),
                ErrorForm(errors: errors),
                SizedBox(height: getProportionateScreenHeight(20),),
                DefaultButton(
                  text: "sign in",
                  press: (){
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                    if (errors.isEmpty){
                     Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                    }
                  },
                )
              ],
            )
            );
  }

  Row rememberAndForget() {
    return Row(
              children: [
                Checkbox(value: remember, onChanged: (value){
               setState(() {
                 remember = value!;
               });
                }
               ),
               const Text("Remember me"),
               const Spacer(),
               GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                 child: const Text(
                  "Forgot password",
                 style: TextStyle(
                  decoration: TextDecoration.underline,
                 ),),
               ),
               
              ],
            );
  }

  TextFormField PasswordFormField() {
    return TextFormField(
              onChanged: (value) {
              if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if(value.length  >= 8 && errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });
        }
              },
              validator: (value) {
              if (value!.isEmpty && !errors.contains(kPassNullError)){
                setState(() {
                  errors.add(kPassNullError);
              });
              return "";
              } else if(value.length< 8 
                   &&(!errors.contains(kPassNullError)
                    && !errors.contains(kShortPassError))) {
                    setState(() {
                      errors.add(kShortPassError);
                    });
                    return "";
                  }
                  return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Color.fromARGB(192, 255, 193, 7)
                  ),
                hintText: "enter your Password",
                
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                icon: "assets/icons/Lock.svg",),
              ),
            );
  }

  TextFormField emailFormField() {
    return TextFormField(
              onSaved:(newValue) => email = newValue,
              onChanged: (Value) {  
                if (Value.isNotEmpty && errors.contains(kEmailNullError)){
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                }else if(emailValidatorRegExp.hasMatch(Value)
                &&errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                },
              validator: (value) {  
                if (value!.isEmpty && !errors.contains(kEmailNullError)){
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                  return "";
                 } else if(!emailValidatorRegExp.hasMatch(value)
                   &&(!errors.contains(kPassNullError)
                    && !errors.contains(kInvalidEmailError))) {
                    setState(() {
                      errors.add(kInvalidEmailError);
                    });
                    return "";
                  }
                  return null;
                },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color.fromARGB(190, 155, 39, 176)
                  ),
                hintText: "enter your email",
                
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                icon: "assets/icons/Mail.svg",),
              ),
            );
  }
}
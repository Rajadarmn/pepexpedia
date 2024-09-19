import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/costum_suffixicon.dart';
import 'package:ui_ecommerce/components/default_button.dart';
import 'package:ui_ecommerce/components/error_form.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/complate_profil/complate_screen_profil.dart';
import 'package:ui_ecommerce/size_config.dart';

class SignUpForm extends StatefulWidget {

  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email;
  String? password;
  String? confirmPassword;

  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          PasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          PasswordConfirmationFormField(),
          SizedBox(height: getProportionateScreenHeight(20),),
          ErrorForm(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20),),
          DefaultButton(text: "continue", 
          press: (){
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            }
            if (errors.isEmpty){
              Navigator.pushNamed(context, ComplateScreenProfil.routeName);
            }
          }
          )
        ],
      ),
    );
  }

TextFormField PasswordConfirmationFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,

              onChanged: (value) {
                setState(() {
                  confirmPassword = value;
                });
              if(password == value){
              setState(() {
            errors.remove(kMatchPassError);
            });
           }
          },
              
               validator: (value){
                 if(value!.isEmpty || errors.contains
                 (kMatchPassError)){
                  return"";
                 }else if(value != password){
                  setState(() {
                    errors.add(kMatchPassError);
                  });
                  return null;
                 }
               },

              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password confirmation",
                labelStyle: TextStyle(
                  color: Color.fromARGB(192, 245, 60, 177),
                  ),
                hintText: "Re-enter your Password",
                
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CostumSuffixIcon(
                icon: "assets/icons/Lock.svg",),
              ),
            );
  }

TextFormField PasswordFormField() {
    return TextFormField(
              onSaved: (newValue) => password = newValue,
              onChanged: (value) {
                setState(() {
                  password = value;
                });
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
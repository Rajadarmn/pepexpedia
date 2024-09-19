import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/costum_suffixicon.dart';
import 'package:ui_ecommerce/components/default_button.dart';
import 'package:ui_ecommerce/components/error_form.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordForm();
}

class _ForgotPasswordForm extends 
 State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
         emailFormField(),
         SizedBox(
          height: getProportionateScreenHeight(20),
         ),
         ErrorForm(errors: errors),
         SizedBox(
          height: getProportionateScreenHeight(20),
         ),
        DefaultButton(
         text: "Reset Password",
          press: (){
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            }
          }
         )
        ],
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
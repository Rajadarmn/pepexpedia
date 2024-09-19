import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/costum_suffixicon.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("complete profile ",
              style: headingStyle,
              ),
              const Text(
                "complate your profile data",
                ),
                SizedBox(
                  height: SizeConfig.screenHeight,
                ),
                ComplateProfileForm()
            ],
          ),
        ),
      ),
    );
  }
}


class ComplateProfileForm extends StatefulWidget {
  const ComplateProfileForm({super.key});

  @override
  State<ComplateProfileForm> createState() => _ComplateProfileFormState();
  
}

class _ComplateProfileFormState extends State<ComplateProfileForm> {
  String? firstname;
  String? lastname;
  String? phone;
  String? address;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
              onSaved: (newValue) => firstname = newValue,
              onChanged: (value) {
                
              },
              validator: (value) {
              
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
                icon: "assets/icons/User.svg",),
              ),
            ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/home/components/header_home_part.dart';
import 'package:ui_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getPropScreenHeight(20)),
              const HeaderHomePart(),
              SizedBox(height: getPropScreenHeight(20)),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getPropScreenWidth(20)),
                padding: EdgeInsets.symmetric(
                horizontal: getPropScreenWidth(20), 
                vertical: getPropScreenHeight(15)
              ),
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      const TextSpan(text: 'A Summer Surprise\n'),
                      TextSpan(
                        text: 'Cashback 20%',
                        style: TextStyle(
                          fontSize: getPropScreenWidth(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {
          
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getPropScreenWidth(20),
            vertical: getPropScreenHeight(9),
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Search product",
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
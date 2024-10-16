import 'package:flutter/material.dart';
import 'package:ui_ecommerce/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20),
      vertical: getPropScreenWidth(15),
      ), 
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 94, 214, 67),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text.rich( 
        TextSpan(
          text: "A Winter Surprise\n",
          style: TextStyle(
            color: Colors.white
          ),
          children: [
            TextSpan(
              text: "Cashback 35%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            )
          ]
        ),
      ),
    );
  }
}


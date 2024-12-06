import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          padding: EdgeInsets.symmetric(
            horizontal: getPropScreenWidth(20),
            vertical: getPropScreenWidth(15),
          ),
          width: double.infinity,
          // height: 90,
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child: Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                          text: "Cashback 50%\n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kSecondaryColor,
                            fontSize: 22,
                          ),
                          children: [
                            TextSpan(
                                text: "Ayo Belanja Sekarang!",
                                style: TextStyle(
                                    fontSize: 16,
                                     color: kSecondaryColor,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getPropScreenWidth(100),
                height: getPropScreenWidth(100),
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: -10,
          child: Image.asset(
            'assets/images/cahyo diskon.png',
            width: getPropScreenWidth(200),
            height: getPropScreenWidth(120),
          ),
        )
      ],
    );
  }
}

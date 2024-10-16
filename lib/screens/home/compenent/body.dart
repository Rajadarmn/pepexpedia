import 'package:flutter/material.dart';
import 'package:ui_ecommerce/screens/home/compenent/categories_home.dart';
import 'package:ui_ecommerce/screens/home/compenent/discount_banner.dart';
import 'package:ui_ecommerce/screens/home/compenent/home_header.dart';
import 'package:ui_ecommerce/screens/home/compenent/popular_product.dart';
import 'package:ui_ecommerce/screens/home/compenent/special_offer.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const HomeHeader(),
            const SizedBox(height: 30),
            const DiscountBanner(),
            const SizedBox(height: 30),
            const Categories(),
            const SizedBox(height: 30),
            SpecialOffer(),
            const SizedBox(height: 30),
            PopularProducts(),
            const SizedBox(height: 20),
          ],
        )
      ));
  }
}

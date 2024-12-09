import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/screens/cart/cart_screen.dart';
import 'package:ui_ecommerce/screens/home/compenent/icon_btn_with_counter.dart';
import 'package:ui_ecommerce/screens/home/compenent/search_field.dart';
import 'package:ui_ecommerce/state_management/cart_provider.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            num0fItems: "0",
          ),
             GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              child:  Consumer<CartProvider>(
                builder: (context, cart, child) =>
                IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                num0fItems: cart.cartItems.length.toString(),
                ),
              ),
            )
        ],
      ),
    );
  }
}
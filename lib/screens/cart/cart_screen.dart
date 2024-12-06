import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/screens/cart/components/body.dart';
import 'package:ui_ecommerce/screens/cart/components/cart_bottom_navigation.dart';
import 'package:ui_ecommerce/state_management/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: CartBottomNavigation(),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,)),
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Consumer<CartProvider>(
            builder: (context, cart, child) => Text(
                "${cart.cartItems.length} items",
                style: Theme.of(context).textTheme.bodySmall),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

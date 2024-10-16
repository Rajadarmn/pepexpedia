import 'package:flutter/material.dart';
import 'package:ui_ecommerce/model/cart.dart';
import 'package:ui_ecommerce/screens/cart/components/body.dart';
import 'package:ui_ecommerce/screens/cart/components/cart_bottom_navigation.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: CartBottomNavigation() ,
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      title: Column(
        children: [
          Text('Your Cart',style: Theme.of(context).textTheme.bodyLarge,),
          Text("${listCart.length} Items" , style: Theme.of(context).textTheme.bodySmall,)
        ],
      ),
      centerTitle: true,
    );
  }
}


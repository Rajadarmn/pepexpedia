import 'package:flutter/material.dart';
import 'package:ui_ecommerce/model/cart.dart';
import 'package:ui_ecommerce/screens/cart/components/item_cart.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCart.length,
      itemBuilder: (context, index){
        final Cart cart = listCart[index];
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10),
        child: Dismissible(
          key: Key(cart.product.id.toString()),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            setState(() {
              listCart.removeAt(index);
            });
          },
          background: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.delete_outline_rounded,
                  color: Colors.white),
                ),
              ],
            ),
           
          ),
          child: ItemCart(cart: cart),
        ),
      );
    });
  }
}


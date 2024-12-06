import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/size_config.dart';
import 'package:ui_ecommerce/state_management/cart_provider.dart';

class CartBottomNavigation extends StatelessWidget {
  const CartBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.30))
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: getPropScreenWidth(40),
                width: getPropScreenWidth(40),
                decoration: BoxDecoration(
                    color: Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(15)),
                child: SvgPicture.asset("assets/icons/receipt.svg"),
              ),
              const Spacer(),
              const Text("Add voucher code"),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 12,
              )
            ],
          ),
          SizedBox(
            height: getPropScreenWidth(20),
          ),
          Consumer<CartProvider>(
            builder: (context, cart, child) => Row(
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(text: "Total:\n"),
                  TextSpan(
                    text: "\$${cart.totalPrice}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ])),
                const Spacer(),
                SizedBox(
                    width: getPropScreenWidth(190),
                    child: MyDefaultButton(
                        text: "Check out",
                        press: () {
                          cart.clearCart();

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("check out succes"),
                            ),
                          );
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }
}

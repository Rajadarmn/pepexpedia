import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/components/rounded_icon_button.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/model/cart.dart';
import 'package:ui_ecommerce/model/product.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/color_picker.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/detail_description.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/image_detail.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/rounded_container.dart';
import 'package:ui_ecommerce/size_config.dart';
import 'package:ui_ecommerce/state_management/cart_provider.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentSelectedColor = 0;
  int totalSelected = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageDetail(product: widget.product),
            RoundedContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  detailDescription(product: widget.product),
                  SizedBox(
                    height: getPropScreenWidth(40),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getPropScreenWidth(20)),
                    child: SizedBox(
                      height: getPropScreenWidth(40),
                      child: Row(
                        children: [
                          ...List.generate(widget.product.colors.length,
                              (index) {
                            final Color color = widget.product.colors[index];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentSelectedColor = index;
                                });
                              },
                              child: ItemColorDot(
                                color: color,
                                isSelected: index == currentSelectedColor,
                              ),
                            );
                          }),
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RoundedIconBtn(
                                  icon: Icons.remove,
                                  press: totalSelected > 1
                                      ? () {
                                          setState(() {
                                            if (totalSelected > 1) {
                                              totalSelected--;
                                            }
                                          });
                                        }
                                      : null),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "${totalSelected}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kSecondaryColor,
                                  ),
                                ),
                              ),
                              RoundedIconBtn(
                                  icon: Icons.add,
                                  press: () {
                                    setState(() {
                                      totalSelected++;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: (40),
                      vertical: (30),
                    ),
                    child: MyDefaultButton(
                        text: "add to Cart",
                        press: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .addCartItems(Cart(
                                  product: widget.product,
                                  num0fItems: totalSelected));

                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("added to cart"),
                          ));
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

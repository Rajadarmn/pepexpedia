import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/my_default_button.dart';
import 'package:ui_ecommerce/model/product.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/color_picker.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/detail_description.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/image_detail.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/rounded_container.dart';
import 'package:ui_ecommerce/size_config.dart';



class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageDetail(product: product),
            RoundedContainer(
              child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                  detailDescription(product: product),
                  SizedBox(
                    height: getPropScreenWidth(40),
                  ),
                  ColorPicker(product: product),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: (40),
                      vertical: (30),
                    ),
                    child: MyDefaultButton(text: "add to Cart", press: (){}),
                  )
                ],
                               ),)
          ],
        ),
      ),
    );
  }
}






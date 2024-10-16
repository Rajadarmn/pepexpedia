import 'package:flutter/material.dart';
import 'package:ui_ecommerce/components/item_popular_product.dart';
import 'package:ui_ecommerce/model/product.dart';
import 'package:ui_ecommerce/screens/detail_screen/detail_screen.dart';
import 'package:ui_ecommerce/screens/home/compenent/section_title.dart';
import 'package:ui_ecommerce/size_config.dart';


class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
           child: SectionTitle(title: 'Popular Products',),
        ),
         const SizedBox(height: 20),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: SizedBox(
            height: getPropScreenHeight(225),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Row(
                 children: List.generate(demoProducts.length, (index) {
                  final Product product = demoProducts[index];
                  return ItemPopularProduct(product: demoProducts[index], press: () 
                  => Navigator.pushNamed(context, DetailScreen.routeName,
                  arguments: product));
                 }),
               ),
             ),
           ),
         )
      ],
    );
  }
}
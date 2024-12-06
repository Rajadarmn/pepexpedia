import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/model/product.dart';
import 'package:ui_ecommerce/size_config.dart';
import 'package:ui_ecommerce/state_management/favourite_provider.dart';

class detailDescription extends StatelessWidget {
  const detailDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(product.title, style: TextStyle(
            fontSize: getPropScreenWidth(23),
            color: kSecondaryColor,
           ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding:  EdgeInsets.all(getPropScreenWidth(15)),
            width: getPropScreenWidth(64),
            decoration: BoxDecoration(
              color:product.isFavourite 
              ? kPrimaryColor.withOpacity(0.2) 
              : kSecondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20)
              )
            ),
            child: Consumer<FavoriteProvider>(
              builder: (context, products, child) {
                return GestureDetector(
                  onTap: ()=> products.toggleFavoriteStatus(product.id),
                  child: Icon(Icons.favorite, 
                  color: product.isFavourite 
                  ? Colors.red 
                  : kSecondaryColor,),
                );
              }
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 64),
          child: ReadMoreText(product.description, 
          trimMode: TrimMode.Line,
          trimLines: 2,
          colorClickableText: kPrimaryColor,
          trimCollapsedText: "\nShow More Detail",
          trimExpandedText: "\nShow less >",
          moreStyle: SeeMoreStyle,
          lessStyle: SeeMoreStyle,
          ),
        )
      ],
    );
  }
}


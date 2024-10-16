import 'package:flutter/material.dart';
import 'package:ui_ecommerce/model/product.dart';
import 'package:ui_ecommerce/screens/detail_screen/components/body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20,
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "4.8",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
               Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
               )
              ],
            ),
          )
        ],
      ),
      body: Body(product: product,),
    );
  }
}
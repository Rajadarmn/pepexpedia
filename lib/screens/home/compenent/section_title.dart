import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: kTextColor
          ),
        ),
        const Text(
          "see more",
          style: TextStyle(
            color: kTextColor
          ),
        ),
        
      ],
    );
  }
}



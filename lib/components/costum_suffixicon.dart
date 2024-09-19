import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_ecommerce/size_config.dart';

class CostumSuffixIcon extends StatelessWidget {
  const CostumSuffixIcon({
    super.key, required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
      0,
      getProportionateScreenWidth(20),
      getProportionateScreenWidth(20),
      getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        icon,
      width: getProportionateScreenWidth(25),
      ),
    );
  }
}
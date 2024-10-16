import 'package:flutter/material.dart';
import 'package:ui_ecommerce/model/category_dart.dart';
import 'package:ui_ecommerce/screens/home/compenent/categories_card.dart';
import 'package:ui_ecommerce/size_config.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List<Map<String, dynamic>> categories = [
    {"icon": "assets/icons/Flash Icon.svg", "name":"Flash deal" },
    {"icon": "assets/icons/Bill Icon.svg", "name":"Bill" },
    {"icon": "assets/icons/Game Icon.svg", "name":"Game"  },
    {"icon": "assets/icons/Gift Icon.svg", "name":"Gift"  },
    {"icon": "assets/icons/Discover.svg", "name":"More"  },
  ];
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getPropScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
          List.generate(
            listCategory.length, 
            (index) => CategoryCard(
              icon: listCategory[index].icon, 
              name: listCategory[index].name, press: (){}
           )
          )
      ),
    );
  }
}

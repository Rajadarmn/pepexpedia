import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/components/custom_navigation_bar.dart';
import 'package:ui_ecommerce/constant.dart';
import 'package:ui_ecommerce/enums.dart';
import 'package:ui_ecommerce/screens/favourite/componets/body.dart';
import 'package:ui_ecommerce/state_management/favourite_provider.dart';

class FavouriteScreen extends StatelessWidget {
  static String routeName = "/fav";
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Body(),
      bottomNavigationBar: CustomNavigationBar(menu: MenuState.favorite),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Your Favorites",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Consumer<FavoriteProvider>(
            builder: (context, favourite, child) => Text(
                "${favourite.favouriteProducts.length} items",
                style: Theme.of(context).textTheme.bodySmall),
          ),
        ],
      ),
    );
  }
}

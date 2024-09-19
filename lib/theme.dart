import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';

ThemeData themeData() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: kTextColor,
          fontSize: 18,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: inputDecorationTheme(),
    );
  }

  TextTheme textTheme() {
    return const TextTheme(
      titleMedium: TextStyle(color: kTextColor),
      bodyMedium: TextStyle(color: kTextColor),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    var outlineInputBorder = const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(28)
                      ),
                      borderSide: BorderSide(
                        color: Color.fromARGB(226, 245, 248, 59),
                      ),
                  );
    return InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(
                    horizontal: 42,
                    vertical: 20,
                  ),
                  enabledBorder: 
                  outlineInputBorder,
                  focusedBorder: 
                  outlineInputBorder,
                  border: outlineInputBorder,
      );
  }


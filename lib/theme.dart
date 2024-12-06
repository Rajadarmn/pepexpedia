import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constant.dart';

ThemeData themeData(bool isDarkMode) {
    return ThemeData(
        fontFamily: 'Muli',
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          titleTextStyle: TextStyle(
            color: kTextColor,
            fontSize: 20,
          )
        ),
        // scaffoldBackgroundColor: Colors.white,
        textTheme: textTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme:  inputDecorationTheme());
  }

  TextTheme textTheme() {
    return const TextTheme(
        titleMedium: TextStyle(color: kTextColor),
        bodyMedium: TextStyle(color: kTextColor),
      );
  }

  InputDecorationTheme inputDecorationTheme() {

    var outlineInputBorder = const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(color: Color.fromARGB(255, 51, 233, 142)),
              gapPadding: 10);

    return InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
          labelStyle: const TextStyle(color: Color.fromARGB(255, 51, 233, 142)),
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          border: outlineInputBorder,
        );
  }

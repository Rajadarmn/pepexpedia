import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_ecommerce/routes.dart';
import 'package:ui_ecommerce/screens/home/home_screen.dart';
import 'package:ui_ecommerce/screens/splash/splash_screen.dart';
import 'package:ui_ecommerce/state_management/cart_provider.dart';
import 'package:ui_ecommerce/state_management/favourite_provider.dart';
import 'package:ui_ecommerce/state_management/search_provider.dart';
import 'package:ui_ecommerce/state_management/theme_provider.dart';
import 'package:ui_ecommerce/state_management/auth_provider.dart'; // Impor AuthProvider
import 'package:ui_ecommerce/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn')?? false;
  runApp(DevicePreview(
    enabled: true,
    defaultDevice: Devices.ios.iPhone13ProMax,
    devices: [Devices.ios.iPhone13ProMax],
    builder: (context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => AuthProvider()), 
          ChangeNotifierProvider(create: (context) => CartProvider()),
          ChangeNotifierProvider(create: (context) => FavoriteProvider()),
          ChangeNotifierProvider(create: (context) => SearchProvider()),
      
        ],
        child: MainApp(isLoggedIn: isLoggedIn,),
      );
    }
  ));
}

class MainApp extends StatelessWidget {

  final bool isLoggedIn;
  const MainApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, child) => MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        theme: themeData(
            theme.isDarkMode), 
        title: 'Pepexpedia',
        initialRoute: isLoggedIn ? HomeScreen.routeName : SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}

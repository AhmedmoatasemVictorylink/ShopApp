import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import './providers/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),  // setting provider of Products in materialapp builder
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
           primarySwatch: Colors.purple,
           colorScheme: ColorScheme.fromSwatch(
              accentColor: Colors.deepOrange,
              primarySwatch: Colors.purple,
              ),
            errorColor: Colors.red,
            canvasColor: Color.fromRGBO(225, 254, 225, 1),
            fontFamily: "Lato",
            textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: TextStyle(
                fontSize: 24,
                fontFamily: "Anton",
                fontWeight: FontWeight.bold,
              )
            )
        ),
        home:  ProductsOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
        },
      ),
    );
  }
}

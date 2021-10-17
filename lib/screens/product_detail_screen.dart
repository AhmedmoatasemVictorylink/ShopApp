import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';


class ProductDetailsScreen extends StatelessWidget {

  //final String title;
  static const routeName = "product-detail";

  //ProductDetailsScreen(this.title);

  @override
  Widget build(BuildContext context) {

    // getting id from ModalRoute
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    // getting product from Products provider
    final loadedproduct = Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedproduct.title),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // listining to Products provider
    final producatsData = Provider.of<Products>(context);
    final products = producatsData.items;
    
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      // setting provider of Product in gridview builder
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (ctx) => products[i],
        child: ProductItem(
          // products[i].id,
          // products[i].title,
          // products[i].imageUrl
          ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
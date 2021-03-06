import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {

    // listining to Product provider
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),  //rounded grids
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailsScreen.routeName,
            arguments: product.id, 
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            ),
        ),
          footer: GridTileBar(
            leading: IconButton(
              icon: Icon(
                product.isFavorite
                ?Icons.favorite
                :Icons.favorite_border
                ),
              onPressed: () {
                product.toggleFavoritesStatus();
              },
              color: Theme.of(context).colorScheme.secondary,
            ),
            backgroundColor: Colors.black87,
            title: Text(product.title, textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon( Icons.shopping_cart),
              onPressed: () {},
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
      ),
    );
  }
}
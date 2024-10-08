// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/models/cart.dart';
import 'package:shopp_app/models/product.dart';
import 'package:shopp_app/utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

 

  @override
Widget build(BuildContext context) {
  final product = Provider.of<Product>(context);
  final cart = Provider.of<Cart>(context);



    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        child: GridTile(
          child: GestureDetector(
           child:  Image.network(product.imageUrl,
            fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PRODUCT_DETAIL,
                arguments: product,
              );
            },
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border ),
              onPressed: () {
                product.toggleFavorite();
              },
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              product.name,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                cart.addItem(product);
              },
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  } 
}
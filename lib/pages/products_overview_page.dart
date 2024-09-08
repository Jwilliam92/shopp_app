import 'package:flutter/material.dart';
import 'package:shopp_app/components/product_item.dart';
import 'package:shopp_app/data/dummy_data.dart';
import 'package:shopp_app/models/product.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(
          child: Text('Minha Loja',
          style: TextStyle(
            color: Colors.white,          
          ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          ),
        itemBuilder: (context, index) => ProductItem(product: loadedProducts[index]),
        )
    );
  }
}
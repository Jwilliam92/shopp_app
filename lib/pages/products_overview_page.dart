import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/components/product_item.dart';

import 'package:shopp_app/models/product.dart';
import 'package:shopp_app/models/product_list.dart';

class ProductsOverviewPage extends StatelessWidget {

  const ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
  final provider = Provider.of<ProductList>(context);
  final List<Product> loadedProducts = provider.items;
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
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: loadedProducts[index],      
        child: const ProductItem(),
        ),        
      ));
  }
} 
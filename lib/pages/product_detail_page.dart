import 'package:flutter/material.dart';
import 'package:shopp_app/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(
          child: Text(product.name,
          style:  const TextStyle(
            color: Colors.white,
          ),
          ),
        ),
      ),
    );
  }
}
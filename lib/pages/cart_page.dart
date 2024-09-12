import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/components/cart_item.dart';
import 'package:shopp_app/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
  final Cart cart = Provider.of(context);
  final items = cart.items.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Carrinho',
        style: TextStyle(color: Colors.white),
        )),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 25,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const Text(
                  'Total',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 10),
              Chip(
              backgroundColor: Colors.deepOrange,
              label: Text(
                      'R\$${cart.totalAmount}',
                      style: const TextStyle(color: Colors.white),
              ),
              ),
              const Spacer(),
              TextButton(
                child: const Text('COMPRAR'),
                style: TextButton.styleFrom(backgroundColor: Colors.white30),
                onPressed: () {},
                ),
              ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => CartItemWidget(cartItem: items[index],),
            ),
          ),
        ]
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/components/app_drawer.dart';
import 'package:shopp_app/components/order.dart';
import 'package:shopp_app/models/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Meus Pedidos')),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (context, index) => OrderWidget(order: orders.items[index],),
    ),
    );
  }
}
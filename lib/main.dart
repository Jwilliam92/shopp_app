import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp_app/models/cart.dart';
import 'package:shopp_app/models/product_list.dart';
import 'package:shopp_app/pages/cart_page.dart';
import 'package:shopp_app/pages/product_detail_page.dart';
import 'package:shopp_app/pages/products_overview_page.dart';
import 'package:shopp_app/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commerce App',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.deepOrange,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent,
          secondary: Colors.deepOrange,
          ),
          fontFamily: 'Lato',
          useMaterial3: true,
        ),
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (context) => const ProductDetailPage(),
          AppRoutes.CART: (context) => const CartPage(),
        },
      ),
    );
  }
}

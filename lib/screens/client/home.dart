import 'package:flutter/material.dart';
import 'package:flutter_full_ecommerce_app/screens/client/account/user.dart';
import 'package:flutter_full_ecommerce_app/screens/client/cart/cart.dart';
import 'package:flutter_full_ecommerce_app/screens/client/shop/shop.dart';
import 'package:flutter_full_ecommerce_app/screens/client/wishlist/wishlist.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == 0
          ? ShopScreen()
          : index == 1
              ? WishlistScreen()
              : index == 2
                  ? CartScreen()
                  : AccountScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        onTap: ((value) {
          index = value;
          setState(() {            
          });
        }),
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_full_ecommerce_app/screens/author/login.dart';

import 'screens/admin/admin.dart';
import 'screens/author/register.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),



    );
     }
}
      

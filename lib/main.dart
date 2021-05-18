import 'package:flutter/material.dart';
import 'package:newhang/layout/home_page.dart';
import 'package:newhang/models/new_collection/new_Collection.dart';
import 'package:newhang/models/product_info/product_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ProductContent.id: (context) => ProductContent(),
        NewCollection.id: (context) => NewCollection(),
      },
      home: HomePage(),
    );
  }
}

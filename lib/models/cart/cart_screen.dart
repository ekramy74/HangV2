import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> size = ['S', 'M', 'L', 'XL', 'XXL'];
  Color activecolor = Colors.black;
  Color unactivecolor = Colors.black;
  int currentIndex = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

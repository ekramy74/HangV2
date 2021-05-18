import 'package:flutter/material.dart';
import 'package:newhang/models/account_manager/account.dart';
import 'package:newhang/models/cart/cart_screen.dart';
import 'package:newhang/models/favorites/favorites.dart';
import 'package:newhang/models/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [Home(), Favorite(), CartScreen(), Account()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: true,
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(
                    'assets/images/playstore.png',
                  ),
                  width: 30,
                  height: 30,
                ),
                // ignore: deprecated_member_use
                title: Text(' ')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                ),
                // ignore: deprecated_member_use
                title: Text(' ')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                // ignore: deprecated_member_use
                title: Text(' ')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                  size: 30,
                ),
                // ignore: deprecated_member_use
                title: Text(' ')),
          ],
        ),
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            'Hang'.toUpperCase(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),
        body: screens[currentindex]);
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:newhang/models/product_info/product_info.dart';
import 'package:newhang/shared/components/components.dart';

class NewCollection extends StatefulWidget {
  static String id = 'New Collection';
  @override
  _NewCollectionState createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Hang'.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(250, 40),
                  bottomRight: Radius.elliptical(250, 40)),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.2)
                  ]),
                ),
                child: Image(
                  image: AssetImage('assets/images/clothes.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50),
              child: Text(
                'bottoms'.toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: height * .25,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ProductContent.id);
                        },
                        child: customColumnForList(
                            height: height * .15,
                            width: width * .4,
                            image: Image(
                              image: AssetImage('assets/images/bag1.png'),
                              fit: BoxFit.cover,
                            ),
                            productprice: '150',
                            productName: 'hand bag')),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ProductContent.id);
                        },
                        child: customColumnForList(
                            height: height * .15,
                            width: width * .4,
                            image: Image(
                              image: AssetImage('assets/images/bag1.png'),
                              fit: BoxFit.cover,
                            ),
                            productprice: '150',
                            productName: 'hand bag')),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ProductContent.id);
                        },
                        child: customColumnForList(
                            height: height * .15,
                            width: width * .4,
                            image: Image(
                              image: AssetImage('assets/images/bag1.png'),
                              fit: BoxFit.cover,
                            ),
                            productprice: '150',
                            productName: 'hand bag')),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50),
              child: Text(
                'upper'.toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: height * .25,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ProductContent.id);
                        },
                        child: customColumnForList(
                            height: height * .15,
                            width: width * .4,
                            image: Image(
                              image: AssetImage('assets/images/bag1.png'),
                              fit: BoxFit.cover,
                            ),
                            productprice: '150',
                            productName: 'hand bag')),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ProductContent.id);
                        },
                        child: customColumnForList(
                            height: height * .15,
                            width: width * .4,
                            image: Image(
                              image: AssetImage('assets/images/bag1.png'),
                              fit: BoxFit.cover,
                            ),
                            productprice: '150',
                            productName: 'hand bag')),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ProductContent.id);
                        },
                        child: customColumnForList(
                            height: height * .15,
                            width: width * .4,
                            image: Image(
                              image: AssetImage('assets/images/bag1.png'),
                              fit: BoxFit.cover,
                            ),
                            productprice: '150',
                            productName: 'hand bag')),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

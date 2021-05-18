import 'package:flutter/material.dart';

Widget customColumnForList({
  @required double height,
  @required double width,
  @required Image image,
  @required String productName,
  @required String productprice,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: image,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$productName'.toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
        ),
        Text(
          '$productprice Egp'.toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
        )
      ],
    );

import 'package:flutter/material.dart';
import 'package:newhang/models/new_collection/new_Collection.dart';
import 'package:newhang/models/product_info/product_info.dart';
import 'package:newhang/shared/components/components.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(children: [
          Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: 'SEARCH',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, NewCollection.id);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * .35,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                      image: AssetImage('assets/images/clothes.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(top: 200),
                      child: Text(
                        'First Collection'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'OUTERWEAR',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
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
        ]));
  }
}

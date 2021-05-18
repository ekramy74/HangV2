import 'package:flutter/material.dart';

class ProductContent extends StatefulWidget {
  static String id = 'productContent';
  @override
  _ProductContentState createState() => _ProductContentState();
}

class _ProductContentState extends State<ProductContent> {
  bool isSelected = false;
  String sizeValue;
  List<String> size = ['S', 'M', 'L', 'XL', 'XXL'];
  int currentIndex = 0;
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Hang'.toUpperCase(),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
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
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .35,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70),
              child: Center(
                  child: Image(
                image: AssetImage('assets/images/bag1.png'),
                fit: BoxFit.contain,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Product Name',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              'Price',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sizeValue = size[currentIndex];
                      if (sizeValue == 'S') {
                        isSelected = true;
                      } else {
                        isSelected = false;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black, width: isSelected ? 0 : 2),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'S',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sizeValue = size[currentIndex];
                      if (sizeValue == 'M') {
                        isSelected = true;
                      } else {
                        isSelected = false;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black, width: isSelected ? 0 : 2),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'M',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sizeValue = size[currentIndex];
                      if (sizeValue == 'L') {
                        isSelected = true;
                      } else {
                        isSelected = false;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black, width: isSelected ? 0 : 2),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'L',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sizeValue = size[currentIndex];
                      if (sizeValue == 'XL') {
                        isSelected = true;
                      } else {
                        isSelected = false;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black, width: isSelected ? 0 : 2),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'XL',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sizeValue = size[currentIndex];
                      if (sizeValue == 'XXL') {
                        isSelected = true;
                      } else {
                        isSelected = false;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black, width: !isSelected ? 0 : 2),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'XXL',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.height * .07,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .05,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (counter > 1) counter--;
                            });
                          },
                        ),
                      ),
                      Text(
                        '$counter',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .05,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                          ),
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            Text(
              'About',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'write product description\nwrite product description\nwrite product description\nwrite product description\n',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500]),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .08,
              width: double.infinity,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Add to cart'.toUpperCase(),
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//ListView.builder(
//   itemBuilder: (context, index) => GestureDetector(
//     onTap: () {
//       setState(() {
//         sizeValue = size[currentIndex];
//         if (sizeValue == 'S') {
//           isSelected = true;
//         } else {
//           isSelected = false;
//         }
//       });
//     },
//     child: Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(
//             color: Colors.black, width: isSelected ? 0 : 2),
//       ),
//       child: CircleAvatar(
//         backgroundColor: Colors.white,
//         child: Text(
//           '${size[index]}',
//           style: TextStyle(
//               color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//       ),
//     ),
//   ),
//   itemCount: size.length,
// ),

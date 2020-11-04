import 'package:flutter/material.dart';
import 'package:hodom/home_screen.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(
              () {
                currentIndex = value;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
              title: Text('المزيد'),
              icon: ImageIcon(
                AssetImage('icons/mark.png'),
              ),
            ),
            BottomNavigationBarItem(
              title: Text('الطبات'),
              icon: ImageIcon(
                AssetImage('icons/truck.png'),
              ),
            ),
            BottomNavigationBarItem(
              title: Text('السلة'),
              icon: ImageIcon(
                AssetImage('icons/bag.png'),
              ),
            ),
            BottomNavigationBarItem(
              title: Text('الرئيسية'),
              icon: ImageIcon(
                AssetImage('icons/home.png'),
              ),
            ),
          ],
        ),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(10),
          //     child: Directionality(
          //       textDirection: TextDirection.rtl,
          //       child: TextField(
          //         textAlign: TextAlign.right,
          //         decoration: new InputDecoration(
          //           prefixIcon: Icon(Icons.search),
          //           labelText: "ما الذي تبحث عنه",
          //           enabledBorder: const OutlineInputBorder(
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(15.0),
          //             ),
          //             borderSide: const BorderSide(
          //               color: Colors.red,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ],
          backgroundColor: Colors.white,

          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'رياضي',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'اطفال',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'اولاد',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'بنات',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'نسائي',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'رجالي',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/shirt1.png',
                                  height: 120,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 55,
                              child: Text('قميص كتان'),
                            ),
                            Positioned(
                              top: 155,
                              left: 100,
                              child: Text('350'),
                            ),
                            Positioned(
                              top: 155,
                              left: 75,
                              child: Text('ج.م'),
                            ),
                            Positioned(
                              top: 175,
                              left: 100,
                              child: Text(
                                '300',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 175,
                              left: 75,
                              child: Text('ج.م',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Positioned(
                              top: 170,
                              left: 20,
                              child: GestureDetector(
                                child: ImageIcon(
                                  AssetImage('icons/bag.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/shirt3.png',
                                  height: 120,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 55,
                              child: Text('سويت شيرت',
                                  style: TextStyle(fontSize: 14)),
                            ),
                            Positioned(
                              top: 155,
                              left: 100,
                              child: Text('350'),
                            ),
                            Positioned(
                              top: 155,
                              left: 75,
                              child: Text('ج.م'),
                            ),
                            Positioned(
                              top: 175,
                              left: 100,
                              child: Text(
                                '300',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 175,
                              left: 75,
                              child: Text('ج.م',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Positioned(
                              top: 170,
                              left: 20,
                              child: GestureDetector(
                                child: ImageIcon(
                                  AssetImage('icons/bag.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 15,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/jeans1.png',
                                  height: 120,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 55,
                              child: Text('بنطلون جينز',
                                  style: TextStyle(fontSize: 14)),
                            ),
                            Positioned(
                              top: 175,
                              left: 100,
                              child: Text(
                                '300',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 175,
                              left: 75,
                              child: Text('ج.م',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Positioned(
                              top: 170,
                              left: 20,
                              child: GestureDetector(
                                child: ImageIcon(
                                  AssetImage('icons/bag.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/shirt2.png',
                                  height: 120,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 55,
                              child: Text('قميص قطن',
                                  style: TextStyle(fontSize: 14)),
                            ),
                            Positioned(
                              top: 175,
                              left: 100,
                              child: Text(
                                '300',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 175,
                              left: 75,
                              child: Text('ج.م',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Positioned(
                              top: 170,
                              left: 20,
                              child: GestureDetector(
                                child: ImageIcon(
                                  AssetImage('icons/bag.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/jacket.png',
                                  height: 120,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 55,
                              child:
                                  Text('جاكيت', style: TextStyle(fontSize: 14)),
                            ),
                            Positioned(
                              top: 175,
                              left: 100,
                              child: Text(
                                '300',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 175,
                              left: 75,
                              child: Text('ج.م',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Positioned(
                              top: 170,
                              left: 20,
                              child: GestureDetector(
                                child: ImageIcon(
                                  AssetImage('icons/bag.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/jeans2.png',
                                  height: 120,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 55,
                              child: Text('بنطلون جينز',
                                  style: TextStyle(fontSize: 14)),
                            ),
                            Positioned(
                              top: 175,
                              left: 100,
                              child: Text(
                                '300',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 175,
                              left: 75,
                              child: Text('ج.م',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Positioned(
                              top: 170,
                              left: 20,
                              child: GestureDetector(
                                child: ImageIcon(
                                  AssetImage('icons/bag.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

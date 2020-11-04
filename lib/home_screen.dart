import 'package:flutter/material.dart';
import 'package:hodom/Network/banner.dart';
import 'package:hodom/models/banner.dart';
import 'package:hodom/models/categories.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'Network/categories.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  int photoIndex = 0;
  List<String> photos = [
    'assets/top.png',
    'assets/jeans1.png',
    'assets/man.png',
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: ListView(
          children: [
            FutureBuilder<Banners>(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Banners banner = snapshot.data;
                  return Container(
                    height: MediaQuery.of(context).size.height / 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Carousel(
                        showIndicator: true,
                        borderRadius: true,
                        dotBgColor: Colors.transparent,
                        dotColor: Colors.red,
                        indicatorBgPadding: 6,
                        dotVerticalPadding: 0,
                        dotSize: 4,
                        dotIncreaseSize: 2,
                        radius: Radius.circular(20),
                        overlayShadow: false,
                        boxFit: BoxFit.cover,
                        autoplayDuration: Duration(seconds: 2),
                        autoplay: true,
                        images: List.generate(
                            banner.result.length,
                            (index) => NetworkImage(
                                  banner.result[index].image,
                                )),
                      ),
                    ),
                  );
                } else {
                  return Center();
                }
              },
              future: getAttributes(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: "ما الذي تبحث عنه",
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                                image: AssetImage(photos[photoIndex]),
                                fit: BoxFit.cover)),
                        height: 170.0,
                        width: 400.0,
                      ),
                      Positioned(
                        top: 50,
                        right: 20,
                        child: Column(
                          children: [
                            Text(
                              'تشكيلة جديدة من',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'الملابس الصيفي',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '25%',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '   بخصم',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 70.0,
                        left: 25.0,
                        right: 25.0,
                        child: SelectedPhoto(
                            numberOfDots: photos.length,
                            photoIndex: photoIndex),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/woman.png',
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                'نسائي',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
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
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/man.png',
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                'رجالي',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/boy.png',
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                'اولاد',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/girl.png',
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                'بنات',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/sport.png',
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                'رياضي',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/kid.png',
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                'اطفال',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            FutureBuilder<Categories>(
              future: getCategories(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  Categories cat = snapshot.data;
                  return GridView.builder(
                    itemCount: cat.result.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            (MediaQuery.of(context).size.width / 2) /
                                MediaQuery.of(context).size.height /
                                4),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Image.network(cat.result[index].image),
                            Text(cat.result[index].name)
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
      ),
    ));
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatelessWidget {
  static const appTitle = 'location';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  ];

  final List<String> titles = [
    ' Coffee ',
    ' Bread ',
    ' Gelato ',
    ' Ice Cream ',
  ];

  List<String> values = [
    'venue',
    'cakes',
    'photographer',
    'cameraman',
    'accomodation',
    'wedding planner',
    'food'
  ];
  List<String> images = [
    'images/venue.webp',
    'images/cake.jpeg',
    'images/photographer.jpeg',
    'images/cameraman.jpeg',
    'images/accomodation.jpeg',
    'images/planner.jpeg',
    'images/food.jpeg'
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red.shade300,
      ),
      body: Container(
        width: wt,
        height: ht * 0.45,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('images/image2.jpeg'),
              fit: BoxFit.scaleDown,
              scale: 0.3,
              opacity: 0.8),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ht * 0.1,
              ),
              Container(
                // color: Colors.white,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: EdgeInsets.all(0),

                height: 140,
                width: wt * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  //   color: Colors.black,
                  // ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),

                // color: Colors.red.shade50,
                child: Column(
                  children: [
                    SizedBox(
                      width: wt * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Vendors',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Text('See All>'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    ),
                    iconic(wt, ht),
                  ],
                ),
              ),
              SizedBox(
                height: 0,
              ),
              //  colorButton(),
              SizedBox(
                height: 5,
              ),
              EButton(),
              // iconic(),
            ],
          ),
          // CarouselSlider(
          //   options: CarouselOptions(
          //     autoPlay: true,
          //     // enlargeCenterPage: true,
          //     //scrollDirection: Axis.vertical,
          //     onPageChanged: (index, reason) {
          //       setState(
          //         () {
          //           _currentIndex = index;
          //         },
          //       );
          //     },
          //   ),
          //   items: imagesList
          //       .map(
          //         (item) => Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Card(
          //             margin: const EdgeInsets.only(
          //               top: 1.0,
          //               bottom: 1.0,
          //             ),
          //             elevation: 6.0,
          //             shadowColor: Colors.redAccent,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(30.0),
          //             ),
          //             child: ClipRRect(
          //                 borderRadius: BorderRadius.all(
          //                   Radius.circular(30.0),
          //                 ),
          //                 child: Container(
          //                   // padding: const EdgeInsets.fromLTRB(40, 10, 1, 20),
          //                   child: GridView.count(
          //                     physics: NeverScrollableScrollPhysics(),
          //                     crossAxisCount: 2,
          //                     shrinkWrap: true,
          //                     // itemCount: 4,
          //                     // gridDelegate:
          //                     //     SliverGridDelegateWithFixedCrossAxisCount(
          //                     //   crossAxisCount: 2,
          //                     //   crossAxisSpacing: 0,
          //                     //   mainAxisSpacing: 0,
          //                     // ),
          //                     children: [
          //                       Container(
          //                         color: Colors.red,
          //                         height: ht * 0.01,
          //                         width: wt * 0.3,
          //                         child: Image(
          //                           image: AssetImage('images/venue.jpeg'),
          //                           height: ht * 0.05,
          //                           width: wt * 0.25,
          //                         ),
          //                       ),
          //                       Container(
          //                         height: ht * 0.05,
          //                         width: wt * 0.3,
          //                         child: Image(
          //                           image: AssetImage('images/food.jpeg'),
          //                           height: ht * 0.05,
          //                           width: wt * 0.25,
          //                         ),
          //                       ),
          //                       Container(
          //                         height: ht * 0.05,
          //                         width: wt * 0.3,
          //                         child: Image(
          //                           image: AssetImage('images/cake.jpeg'),
          //                           height: ht * 0.05,
          //                           width: wt * 0.25,
          //                         ),
          //                       ),
          //                       Container(
          //                         height: ht * 0.05,
          //                         width: wt * 0.3,
          //                         child: Image(
          //                           image: AssetImage('images/invitation.jpeg'),
          //                           height: ht * 0.05,
          //                           width: wt * 0.25,
          //                         ),
          //                       ),
          //                     ],
          //                     // itemCount: 30,
          //                     // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //                     //   crossAxisCount: 2,
          //                     //   crossAxisSpacing: 20,
          //                     //   mainAxisSpacing: 5,
          //                     // ),
          //                     // itemBuilder: (BuildContext context, int index) {
          //                     //   return Container(
          //                     //     margin: EdgeInsets.all(20),
          //                     //     alignment: Alignment.center,
          //                     //     decoration: BoxDecoration(
          //                     //       borderRadius: BorderRadius.circular(25),
          //                     //       color: Colors.black,
          //                     //       // image: DecorationImage(
          //                     //       //   opacity: 0.75,
          //                     //       //   fit: BoxFit.fill,
          //                     //       //   image: AssetImage(
          //                     //       //     images[index],
          //                     //       //   ),
          //                     //       // ),
          //                     //     ),
          //                     //     child: Text(
          //                     //       values[index],
          //                     //       style: TextStyle(
          //                     //         // backgroundColor: Colors.white,
          //                     //         color: Colors.white,
          //                     //         fontWeight: FontWeight.w900,
          //                     //         fontSize: 15,
          //                     //       ),
          //                     //     ),
          //                     //   );
          //                     // },
          //                   ),
          //                 )
          //                 // child: Stack(
          //                 //   children: <Widget>[
          //                 //     Container(
          //                 //       color: Colors.green,
          //                 //       height: ht * 0.4,
          //                 //       width: wt * 0.8,
          //                 //       child: Row(
          //                 //         mainAxisAlignment: MainAxisAlignment.center,
          //                 //         children: [
          //                 //           Container(
          //                 //             color: Colors.red,
          //                 //             height: ht * 0.3,
          //                 //             width: wt * 0.3,
          //                 //             child: Column(
          //                 //               mainAxisAlignment:
          //                 //                   MainAxisAlignment.center,
          //                 //               children: [
          //                 //                 Image.network(
          //                 //                   item,
          //                 //                   fit: BoxFit.cover,
          //                 //                   width: wt * 0.1,
          //                 //                 ),
          //                 //                 Center(
          //                 //                   child: Text(
          //                 //                     '${titles[_currentIndex]}',
          //                 //                     style: TextStyle(
          //                 //                       fontSize: 12.0,
          //                 //                       fontWeight: FontWeight.bold,
          //                 //                       backgroundColor: Colors.black45,
          //                 //                       color: Colors.white,
          //                 //                     ),
          //                 //                   ),
          //                 //                 ),
          //                 //                 Image.network(
          //                 //                   item,
          //                 //                   fit: BoxFit.cover,
          //                 //                   width: wt * 0.1,
          //                 //                 ),
          //                 //                 Center(
          //                 //                   child: Text(
          //                 //                     '${titles[_currentIndex]}',
          //                 //                     style: TextStyle(
          //                 //                       fontSize: 12.0,
          //                 //                       fontWeight: FontWeight.bold,
          //                 //                       backgroundColor: Colors.black45,
          //                 //                       color: Colors.white,
          //                 //                     ),
          //                 //                   ),
          //                 //                 ),
          //                 //               ],
          //                 //             ),
          //                 //           ),
          //                 //           Container(
          //                 //             color: Colors.blue,
          //                 //             height: ht * 0.3,
          //                 //             width: wt * 0.3,
          //                 //             child: Column(
          //                 //                 mainAxisAlignment:
          //                 //                     MainAxisAlignment.center,
          //                 //                 children: [
          //                 //                   Image.network(
          //                 //                     item,
          //                 //                     fit: BoxFit.cover,
          //                 //                     width: wt * 0.2,
          //                 //                   ),
          //                 //                   Center(
          //                 //                     child: Text(
          //                 //                       titles[_currentIndex],
          //                 //                       style: const TextStyle(
          //                 //                         fontSize: 12.0,
          //                 //                         fontWeight: FontWeight.bold,
          //                 //                         backgroundColor: Colors.black45,
          //                 //                         color: Colors.white,
          //                 //                       ),
          //                 //                     ),
          //                 //                   ),
          //                 //                   Image.network(
          //                 //                     item,
          //                 //                     fit: BoxFit.cover,
          //                 //                     width: wt * 0.1,
          //                 //                   ),
          //                 //                   Center(
          //                 //                     child: Text(
          //                 //                       titles[_currentIndex],
          //                 //                       style: const TextStyle(
          //                 //                         fontSize: 12.0,
          //                 //                         fontWeight: FontWeight.bold,
          //                 //                         backgroundColor: Colors.black45,
          //                 //                         color: Colors.white,
          //                 //                       ),
          //                 //                     ),
          //                 //                   ),
          //                 //                 ]),
          //                 //           )
          //                 //         ],
          //                 //       ),
          //                 //     ),
          //                 //     // Image.network(
          //                 //     //   item,
          //                 //     //   fit: BoxFit.cover,
          //                 //     //   width: double.infinity,
          //                 //     // ),
          //                 //     // Center(
          //                 //     //   child: Text(
          //                 //     //     '${titles[_currentIndex]}',
          //                 //     //     style: TextStyle(
          //                 //     //       fontSize: 24.0,
          //                 //     //       fontWeight: FontWeight.bold,
          //                 //     //       backgroundColor: Colors.black45,
          //                 //     //       color: Colors.white,
          //                 //     //     ),
          //                 //     //   ),
          //                 //     // ),
          //                 //   ],
          //                 // ),
          //                 ),
          //           ),
          //         ),
          //       )
          //       .toList(),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: imagesList.map((urlOfItem) {
          //     int index = imagesList.indexOf(urlOfItem);
          //     return Container(
          //       width: 10.0,
          //       height: 10.0,
          //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: _currentIndex == index
          //             ? Color.fromRGBO(0, 0, 0, 0.8)
          //             : Color.fromRGBO(0, 0, 0, 0.3),
          //       ),
          //     );
          //   }).toList(),
          // ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFE57373),
              ),
              child: Text('profile'),
            ),
            ListTile(
              title: const Text('vendors'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact info'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget colorButton() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      margin: EdgeInsets.fromLTRB(235, 0, 0, 0),
      alignment: Alignment.centerRight,
      width: MediaQuery.of(context).size.width - 320,
      height: 30,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade200.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(9),
        // border: Border.all(
        //   width: 0.5,
        // )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 8,
          ),
          Text(
            'See All>',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
            ),
          ),
        ],
      ),
    );
  }

  Widget iconic(double wt, double ht) {
    return Container(
      width: wt * 0.8,
      height: ht * 0.135,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black,
              image: DecorationImage(
                opacity: 0.75,
                fit: BoxFit.fill,
                image: AssetImage(
                  images[index],
                ),
              ),
            ),
            child: Center(
              // alignment: Alignment(0, 1),
              child: Text(
                values[index],
                style: TextStyle(
                  // backgroundColor: Colors.white,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget EButton() {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade200.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
        color: Colors.red.shade300,
        borderRadius: BorderRadius.circular(9),
        // border: Border.all(
        //   width: 0.5,
        // )
      ),
      child: Center(
        child: Text(
          'E-invitation',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}

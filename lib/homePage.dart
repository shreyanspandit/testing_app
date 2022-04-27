import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:testing_app/Searchpage.dart';
import 'package:testing_app/vendorDetail.dart';

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

  List<String> images2 = [
    'assets/inv/inv1.jpeg',
    'assets/inv/inv2.jpeg',
    'assets/inv/inv3.jpeg',
    'assets/inv/inv4.jpeg',
    'assets/inv/inv5.jpeg',
    'assets/inv/inv6.jpeg',
    'assets/inv/inv1.jpeg',
  ];

  List<String> images3 = [
    'assets/venue/venue1.jpeg',
    'assets/venue/venue2.jpeg',
    'assets/venue/venue3.jpeg',
    'assets/venue/venue4.jpeg',
    'assets/venue/venue5.jpeg',
    'assets/venue/venue6.jpeg',
    'assets/venue/venue1.jpeg',
  ];

  List<String> quotes = [
    'assets/quotes/quote1.jpeg',
    'assets/quotes/quote2.jpeg',
    'assets/quotes/quote3.jpeg',
    'assets/quotes/quote4.jpeg',
  ];

  List<String> locations = [
    'JAIPUR',
    'JODHPUR',
    'BAGHRU',
    'UDAIPUR',
    'JAISALMER',
    'KOTA',
    'DELHI',
    'MUMBAI',
    'BANGALORE',
    'CHENNAI',
    'KOLKATA',
    'TEKANGANA',
    'MALDIVES',
    'ANDAMAN',
    'AGRA',
    'LUCKNOW',
  ];

  TextEditingController textController = TextEditingController();

  bool flag = false;

  bool _folded = true;

  bool _search = false;
  String _location = '';
  String _start = '';
  String _end = '';

  String dropdownValue = 'One';
  // late AnimationController _anime = AnimationController(
  //   vsync: this,
  // );
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(
      Duration(days: 3),
    ),
  );

  int _currentIndex = 0;

  _showPopupMenu()
  //  async {
  //   await PopupMenuButton(
  //     child: Center(child: Text('click here')),
  //     itemBuilder: (context) {
  //       return List.generate(
  //         5,
  //         (index) {
  //           return PopupMenuItem(
  //             child: Text('button no $index'),
  //           );
  //         },
  //       );
  //     },
  //   );
  // }
  async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 90, 50, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      //   items: [
      //     PopupMenuItem(
      //       child: Text("JAIPUR"),
      //     ),
      //     PopupMenuItem(
      //       child: Text("UDAIPUR"),
      //     ),
      //     PopupMenuItem(
      //       child: Text("JODHPUR"),
      //     ),
      //     PopupMenuItem(
      //       child: Text("JAISALMER"),
      //     ),
      //     PopupMenuItem(
      //       child: Text("KOTA"),
      //     ),
      //   ],
      items: List.generate(
        locations.length,
        (index) => PopupMenuItem(
          value: index + 1,
          child: Text(
            locations[index],
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
      elevation: 8.0,
    ).then((value) {
      if (value != null) {
        setState(() {
          _location = locations[value];
        });
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    final start = dateRange.start;
    final end = dateRange.end;

    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(widget.title),

      //   backgroundColor: Colors.red.shade300,
      // ),
      body: Container(
        // color: Colors.red.shade50.withOpacity(0.5),
        height: ht,
        width: wt,

        child: Stack(
          //fit: StackFit.expand,
          alignment: Alignment.topCenter,
          children: <Widget>[
            // Positioned(
            //   top: 0,
            //   child: Container(
            //     width: wt,
            //     height: ht * 0.13,
            //     color: Colors.red.shade300,

            //     //                buildMap(),
            //     // buildBottomNavigationBar(),
            //     child: buildFloatingSearchBar(),
            //   ),
            // ),
            Positioned(
              top: 0,
              child: Container(
                width: wt,
                height: ht * 0.25,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/wedding2.jpg'),
                      fit: BoxFit.fill,
                      scale: 0.3,
                      opacity: 0.85),
                ),
              ),
            ),

            // Positioned(
            //   top: ht * 0.1,
            //   left: wt * 0.4,
            //   child: Builder(builder: (context) {
            //     return AnimSearchBar(
            //       rtl: true,
            //       width: 200,
            //       textController: textController,
            //       prefixIcon: Icon(Icons.search),
            //       suffixIcon: Icon(Icons.crop_square_sharp),

            //       onSuffixTap: () {
            //         setState(() {
            //           textController.clear();
            //         });
            //       },
            //     );
            //   }),
            // ),

            Positioned(
              top: ht * 0.057,
              left: wt * 0.05,
              child: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    iconSize: 38,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
            ),

            // Positioned(
            //   top: ht * 0.06,
            //   left: wt * 0.81,
            //   child: Builder(
            //     builder: (BuildContext context) {
            //       return IconButton(
            //         icon: const Icon(Icons.location_pin),
            //         iconSize: 36,
            //         onPressed: () {
            //           Scaffold.of(context).openDrawer();
            //         },
            //         tooltip:
            //             MaterialLocalizations.of(context).openAppDrawerTooltip,
            //       );
            //     },
            //   ),
            // ),

            Positioned(
              top: ht * 0.069,
              left: wt * 0.1,
              child: Builder(
                builder: (BuildContext context) {
                  return searchbarcustom(wt, ht);

                  // IconButton(
                  //   icon: const Icon(Icons.search_rounded),
                  //   iconSize: 40,
                  //   onPressed: () => Navigator.of(context)
                  //       .push(MaterialPageRoute(builder: (_) => searchbar())),

                  // tooltip:
                  //     MaterialLocalizations.of(context).openAppDrawerTooltip,
                },
              ),
            ),
            Positioned(
              top: ht * 0.25,
              child: Container(
                width: wt,
                height: ht * 0.635,
                // color: Colors.black,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      // color: Colors.red,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // SizedBox(
                            //   height: ht * 0.005,
                            // ),
                            Container(
                              // color: Colors.white,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              padding: EdgeInsets.all(0),

                              height: ht * 0.2,
                              width: wt * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // border: Border.all(
                                //   color: Colors.black,
                                // ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(1, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),

                              // color: Colors.red.shade50,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: ht * 0.005,
                                  ),
                                  SizedBox(
                                    width: wt * 0.8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          ' Vendors',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Roboto',
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 33,
                                          child: TextButton(
                                            // style: ButtonStyle(
                                            //   backgroundColor:
                                            //       MaterialStateProperty.all(
                                            //           Colors.red),
                                            // ),
                                            child: Text(
                                              'See All>',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontFamily: 'Roboto',
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
                                            onPressed: () =>
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            vendorDetail())),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  // ),
                                  iconic(wt, ht),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            //  colorButton(),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            // EButton(),
                            // iconic(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      // child: quote(ht, wt),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: ht * 0.005,
                            ),
                            Container(
                              // color: Colors.white,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              padding: EdgeInsets.all(0),

                              height: ht * 0.2,
                              width: wt * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // border: Border.all(
                                //   color: Colors.black,
                                // ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(1, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),

                              // color: Colors.red.shade50,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: ht * 0.01,
                                  ),
                                  SizedBox(
                                    width: wt * 0.8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          ' Venues',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Roboto',
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          'See All>',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontFamily: 'Roboto',
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  ),
                                  iconic3(wt, ht),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: ht * 0.005,
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
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(1, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),

                              // color: Colors.red.shade50,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: ht * 0.01,
                                  ),
                                  SizedBox(
                                    width: wt * 0.8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          ' E-invitations',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Roboto',
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          'See All>',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontFamily: 'Roboto',
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  ),
                                  iconic2(wt, ht),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //     // CarouselSlider(
            //     //   options: CarouselOptions(
            //     //     autoPlay: true,
            //     //     // enlargeCenterPage: true,
            //     //     //scrollDirection: Axis.vertical,
            //     //     onPageChanged: (index, reason) {
            //     //       setState(
            //     //         () {
            //     //           _currentIndex = index;
            //     //         },
            //     //       );
            //     //     },
            //     //   ),
            //     //   items: imagesList
            //     //       .map(
            //     //         (item) => Padding(
            //     //           padding: const EdgeInsets.all(8.0),
            //     //           child: Card(
            //     //             margin: const EdgeInsets.only(
            //     //               top: 1.0,
            //     //               bottom: 1.0,
            //     //             ),
            //     //             elevation: 6.0,
            //     //             shadowColor: Colors.redAccent,
            //     //             shape: RoundedRectangleBorder(
            //     //               borderRadius: BorderRadius.circular(30.0),
            //     //             ),
            //     //             child: ClipRRect(
            //     //                 borderRadius: BorderRadius.all(
            //     //                   Radius.circular(30.0),
            //     //                 ),
            //     //                 child: Container(
            //     //                   // padding: const EdgeInsets.fromLTRB(40, 10, 1, 20),
            //     //                   child: GridView.count(
            //     //                     physics: NeverScrollableScrollPhysics(),
            //     //                     crossAxisCount: 2,
            //     //                     shrinkWrap: true,
            //     //                     // itemCount: 4,
            //     //                     // gridDelegate:
            //     //                     //     SliverGridDelegateWithFixedCrossAxisCount(
            //     //                     //   crossAxisCount: 2,
            //     //                     //   crossAxisSpacing: 0,
            //     //                     //   mainAxisSpacing: 0,
            //     //                     // ),
            //     //                     children: [
            //     //                       Container(
            //     //                         color: Colors.red,
            //     //                         height: ht * 0.01,
            //     //                         width: wt * 0.3,
            //     //                         child: Image(
            //     //                           image: AssetImage('images/venue.jpeg'),
            //     //                           height: ht * 0.05,
            //     //                           width: wt * 0.25,
            //     //                         ),
            //     //                       ),
            //     //                       Container(
            //     //                         height: ht * 0.05,
            //     //                         width: wt * 0.3,
            //     //                         child: Image(
            //     //                           image: AssetImage('images/food.jpeg'),
            //     //                           height: ht * 0.05,
            //     //                           width: wt * 0.25,
            //     //                         ),
            //     //                       ),
            //     //                       Container(
            //     //                         height: ht * 0.05,
            //     //                         width: wt * 0.3,
            //     //                         child: Image(
            //     //                           image: AssetImage('images/cake.jpeg'),
            //     //                           height: ht * 0.05,
            //     //                           width: wt * 0.25,
            //     //                         ),
            //     //                       ),
            //     //                       Container(
            //     //                         height: ht * 0.05,
            //     //                         width: wt * 0.3,
            //     //                         child: Image(
            //     //                           image: AssetImage('images/invitation.jpeg'),
            //     //                           height: ht * 0.05,
            //     //                           width: wt * 0.25,
            //     //                         ),
            //     //                       ),
            //     //                     ],
            //     //                     // itemCount: 30,
            //     //                     // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     //                     //   crossAxisCount: 2,
            //     //                     //   crossAxisSpacing: 20,
            //     //                     //   mainAxisSpacing: 5,
            //     //                     // ),
            //     //                     // itemBuilder: (BuildContext context, int index) {
            //     //                     //   return Container(
            //     //                     //     margin: EdgeInsets.all(20),
            //     //                     //     alignment: Alignment.center,
            //     //                     //     decoration: BoxDecoration(
            //     //                     //       borderRadius: BorderRadius.circular(25),
            //     //                     //       color: Colors.black,
            //     //                     //       // image: DecorationImage(
            //     //                     //       //   opacity: 0.75,
            //     //                     //       //   fit: BoxFit.fill,
            //     //                     //       //   image: AssetImage(
            //     //                     //       //     images[index],
            //     //                     //       //   ),
            //     //                     //       // ),
            //     //                     //     ),
            //     //                     //     child: Text(
            //     //                     //       values[index],
            //     //                     //       style: TextStyle(
            //     //                     //         // backgroundColor: Colors.white,
            //     //                     //         color: Colors.white,
            //     //                     //         fontWeight: FontWeight.w900,
            //     //                     //         fontSize: 15,
            //     //                     //       ),
            //     //                     //     ),
            //     //                     //   );
            //     //                     // },
            //     //                   ),
            //     //                 )
            //     //                 // child: Stack(
            //     //                 //   children: <Widget>[
            //     //                 //     Container(
            //     //                 //       color: Colors.green,
            //     //                 //       height: ht * 0.4,
            //     //                 //       width: wt * 0.8,
            //     //                 //       child: Row(
            //     //                 //         mainAxisAlignment: MainAxisAlignment.center,
            //     //                 //         children: [
            //     //                 //           Container(
            //     //                 //             color: Colors.red,
            //     //                 //             height: ht * 0.3,
            //     //                 //             width: wt * 0.3,
            //     //                 //             child: Column(
            //     //                 //               mainAxisAlignment:
            //     //                 //                   MainAxisAlignment.center,
            //     //                 //               children: [
            //     //                 //                 Image.network(
            //     //                 //                   item,
            //     //                 //                   fit: BoxFit.cover,
            //     //                 //                   width: wt * 0.1,
            //     //                 //                 ),
            //     //                 //                 Center(
            //     //                 //                   child: Text(
            //     //                 //                     '${titles[_currentIndex]}',
            //     //                 //                     style: TextStyle(
            //     //                 //                       fontSize: 12.0,
            //     //                 //                       fontWeight: FontWeight.bold,
            //     //                 //                       backgroundColor: Colors.black45,
            //     //                 //                       color: Colors.white,
            //     //                 //                     ),
            //     //                 //                   ),
            //     //                 //                 ),
            //     //                 //                 Image.network(
            //     //                 //                   item,
            //     //                 //                   fit: BoxFit.cover,
            //     //                 //                   width: wt * 0.1,
            //     //                 //                 ),
            //     //                 //                 Center(
            //     //                 //                   child: Text(
            //     //                 //                     '${titles[_currentIndex]}',
            //     //                 //                     style: TextStyle(
            //     //                 //                       fontSize: 12.0,
            //     //                 //                       fontWeight: FontWeight.bold,
            //     //                 //                       backgroundColor: Colors.black45,
            //     //                 //                       color: Colors.white,
            //     //                 //                     ),
            //     //                 //                   ),
            //     //                 //                 ),
            //     //                 //               ],
            //     //                 //             ),
            //     //                 //           ),
            //     //                 //           Container(
            //     //                 //             color: Colors.blue,
            //     //                 //             height: ht * 0.3,
            //     //                 //             width: wt * 0.3,
            //     //                 //             child: Column(
            //     //                 //                 mainAxisAlignment:
            //     //                 //                     MainAxisAlignment.center,
            //     //                 //                 children: [
            //     //                 //                   Image.network(
            //     //                 //                     item,
            //     //                 //                     fit: BoxFit.cover,
            //     //                 //                     width: wt * 0.2,
            //     //                 //                   ),
            //     //                 //                   Center(
            //     //                 //                     child: Text(
            //     //                 //                       titles[_currentIndex],
            //     //                 //                       style: const TextStyle(
            //     //                 //                         fontSize: 12.0,
            //     //                 //                         fontWeight: FontWeight.bold,
            //     //                 //                         backgroundColor: Colors.black45,
            //     //                 //                         color: Colors.white,
            //     //                 //                       ),
            //     //                 //                     ),
            //     //                 //                   ),
            //     //                 //                   Image.network(
            //     //                 //                     item,
            //     //                 //                     fit: BoxFit.cover,
            //     //                 //                     width: wt * 0.1,
            //     //                 //                   ),
            //     //                 //                   Center(
            //     //                 //                     child: Text(
            //     //                 //                       titles[_currentIndex],
            //     //                 //                       style: const TextStyle(
            //     //                 //                         fontSize: 12.0,
            //     //                 //                         fontWeight: FontWeight.bold,
            //     //                 //                         backgroundColor: Colors.black45,
            //     //                 //                         color: Colors.white,
            //     //                 //                       ),
            //     //                 //                     ),
            //     //                 //                   ),
            //     //                 //                 ]),
            //     //                 //           )
            //     //                 //         ],
            //     //                 //       ),
            //     //                 //     ),
            //     //                 //     // Image.network(
            //     //                 //     //   item,
            //     //                 //     //   fit: BoxFit.cover,
            //     //                 //     //   width: double.infinity,
            //     //                 //     // ),
            //     //                 //     // Center(
            //     //                 //     //   child: Text(
            //     //                 //     //     '${titles[_currentIndex]}',
            //     //                 //     //     style: TextStyle(
            //     //                 //     //       fontSize: 24.0,
            //     //                 //     //       fontWeight: FontWeight.bold,
            //     //                 //     //       backgroundColor: Colors.black45,
            //     //                 //     //       color: Colors.white,
            //     //                 //     //     ),
            //     //                 //     //   ),
            //     //                 //     // ),
            //     //                 //   ],
            //     //                 // ),
            //     //                 ),
            //     //           ),
            //     //         ),
            //     //       )
            //     //       .toList(),
            //     // ),
            //     // Row(
            //     //   mainAxisAlignment: MainAxisAlignment.center,
            //     //   children: imagesList.map((urlOfItem) {
            //     //     int index = imagesList.indexOf(urlOfItem);
            //     //     return Container(
            //     //       width: 10.0,
            //     //       height: 10.0,
            //     //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            //     //       decoration: BoxDecoration(
            //     //         shape: BoxShape.circle,
            //     //         color: _currentIndex == index
            //     //             ? Color.fromRGBO(0, 0, 0, 0.8)
            //     //             : Color.fromRGBO(0, 0, 0, 0.3),
            //     //       ),
            //     //     );
            //     //   }).toList(),
            //     // ),
            //   ),
            // ),

            // Positioned(
            //   top: ht * 0.2,
            //   child: Container(
            //     width: wt,
            //     height: ht * 0.15,
            //     decoration: BoxDecoration(
            //       color: Colors.black,
            //       image: DecorationImage(
            //         alignment: Alignment.topCenter,
            //         image: AssetImage('assets/offers.jpeg'),
            //         fit: BoxFit.fill,
            //         scale: 0.3,
            //         // opacity: 0.7),
            //       ),
            //     ),
            //   ),
            // ),

            // Positioned(
            //   child: Container(

            // ),),
          ],
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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   label: const Text('Chat with us'),
      //   icon: const Icon(Icons.chat_bubble_rounded),
      //   backgroundColor: Colors.black,
      // ),
    );
  }

  // Widget calender() {
  //   final start = dateRange.start;
  //   final end = dateRange.end;
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Expanded(
  //             child: ElevatedButton(
  //               child: Text('${start.day}/${start.month}/${start.year}/'),
  //               onPressed: pickDateRange,
  //             ),
  //           ),
  //           Expanded(
  //             child: ElevatedButton(
  //               onPressed: pickDateRange,
  //               child: Text('${start.day}/${start.month}/${start.year}/'),
  //             ),
  //           ),
  //         ],
  //       )
  //     ],
  //   );
  // }

  Widget searchbar(width) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),

      /// In AnimSearchBar widget, the width, textController, onSuffixTap are required properties.
      /// You have also control over the suffixIcon, prefixIcon, helpText and animationDurationInMilli
      child: SearchBarAnimation(
        isOriginalAnimation: true,
        buttonBorderColour: Colors.black45,
        // enableKeyboardFocus: true,
        buttonIcon: Icons.search,
        onFieldSubmitted: (String value) {
          debugPrint('onFieldSubmitted value $value');
        },
        textEditingController: textController,
        searchBoxWidth: width * 0.6,
        isSearchBoxOnRightSide: true,
      ),
    );
  }

  Widget searchbarcustom(double wt, double ht) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: ht * 0.06,

          // color: Colors.red,

          // alignment: Alignment.centerRight,
          child: AnimatedContainer(
            // alignment: Alignment.centerRight,
            duration: Duration(milliseconds: 400),
            width: _folded ? wt * 0.1 : wt * 0.79,
            height: ht * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
              boxShadow: kElevationToShadow[6],
            ),
            child: Container(
              height: ht * 0.06,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      child: !_folded
                          ? TextField(
                              decoration: InputDecoration(
                                hintText: 'search',
                                hintStyle: TextStyle(color: Colors.black),
                                border: InputBorder.none,
                              ),
                            )
                          : null,
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_folded ? 32 : 0),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(_folded ? 32 : 0),
                          bottomRight: Radius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            _folded ? Icons.search : Icons.close,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _folded = !_folded;
                            _search = !_search;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: ht * 0.06,
          margin: EdgeInsets.only(top: 10),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                child: Container(
                  width: wt * 0.45,
                  child: _search
                      ? Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '${dateRange.start.day}/${dateRange.start.month}  to  ${dateRange.end.day}/${dateRange.end.month}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Center(
                                child: Icon(
                                  _search
                                      ? Icons.calendar_today_outlined
                                      : null,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ),
                onTap: () {
                  showDateRangePicker(
                    initialEntryMode: DatePickerEntryMode.calendar,
                    context: context,
                    initialDateRange: dateRange,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    builder: (context, child) => Theme(
                      data: ThemeData().copyWith(
                        colorScheme: ColorScheme.light(
                          primary: Colors.red.shade900,
                        ),
                      ),
                      child: child!,
                    ),
                  );
                },
              ),
              InkWell(
                child: Container(
                  width: wt * 0.4,
                  child: _search
                      ? Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                _location == '' ? 'Select location' : _location,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                _search ? Icons.location_on : null,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ),
                onTap: _showPopupMenu,
              ),
            ],
          ),
        )
      ],
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
          mainAxisSpacing: 12,
          childAspectRatio: 0.66,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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

  Widget iconic3(double wt, double ht) {
    return Container(
      width: wt * 0.8,
      height: ht * 0.135,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          childAspectRatio: 0.66,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              image: DecorationImage(
                opacity: 0.75,
                fit: BoxFit.fill,
                image: AssetImage(
                  images3[index],
                ),
              ),
            ),
            // child: Center(
            //   // alignment: Alignment(0, 1),
            //   child: Text(
            //     values[index],
            //     style: TextStyle(
            //       // backgroundColor: Colors.white,
            //       color: Colors.white,
            //       fontWeight: FontWeight.w900,
            //       fontSize: 15,
            //     ),
            //   ),
            // ),
          );
        },
      ),
    );
  }

  Widget quote(double wt, double ht) {
    return Container(
      // color: Colors.red,
      height: ht * 0.55,
      width: wt * 0.55,
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              // enlargeCenterPage: true,
              //scrollDirection: Axis.vertical,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
            items: quotes
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: Card(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      elevation: 6.0,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              item,
                              fit: BoxFit.fill,
                              // width: double.infinity,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget iconic2(double wt, double ht) {
    return Container(
      width: wt * 0.8,
      height: ht * 0.135,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          childAspectRatio: 0.66,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              image: DecorationImage(
                opacity: 1,
                fit: BoxFit.fill,
                image: AssetImage(
                  images2[index],
                ),
              ),
            ),
            // child: Center(
            //   // alignment: Alignment(0, 1),
            //   child: Text(
            //     values[index],
            //     style: TextStyle(
            //       // backgroundColor: Colors.white,
            //       color: Colors.white,
            //       fontWeight: FontWeight.w900,
            //       fontSize: 15,
            //     ),
            //   ),
            // ),
          );
        },
      ),
    );
  }

  Widget buildFloatingSearchBar() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.place),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
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

//   Future pickDateRange() async {
//     DateTimeRange? newDateRange = await showDateRangePicker();

//     if (newDateRange == null) return;
//     setState(() {
//       dateRange = newDateRange;
//     });
//   }

// child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: ht * 0.1,
//                       ),
//                       Container(
//                         // color: Colors.white,
//                         margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
//                         padding: EdgeInsets.all(0),

//                         height: 140,
//                         width: wt * 0.9,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           // border: Border.all(
//                           //   color: Colors.black,
//                           // ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(20),
//                           ),
//                         ),

//                         // color: Colors.red.shade50,
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               width: wt * 0.8,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'Vendors',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.w900,
//                                       fontFamily: 'Roboto',
//                                     ),
//                                   ),
//                                   Text('See All>'),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
//                             ),
//                             iconic(wt, ht),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 0,
//                       ),
//                       //  colorButton(),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       // EButton(),
//                       // iconic(),
//                     ],
//                   ),

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
  // ),

}

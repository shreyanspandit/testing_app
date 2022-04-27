import 'package:flutter/material.dart';

class vendorDetail extends StatefulWidget {
  @override
  State<vendorDetail> createState() => _vendorDetailState();
}

class _vendorDetailState extends State<vendorDetail> {
  List<String> images = [
    'images/venue.webp',
    'images/cake.jpeg',
    'images/photographer.jpeg',
    'images/cameraman.jpeg',
    'images/accomodation.jpeg',
    'images/planner.jpeg',
    'images/food.jpeg',
    'images/invitation.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red.shade900,
                Colors.red.shade700,
                Colors.red.shade200,
              ],
            ),
          ),
        ),
        // actions: <Widget>[IconButton(onPressed: onPressed, icon: icon)],
        backgroundColor: Colors.red.shade300,
        title: const Text(
          'ALL VENDORS OF THIS TYPE',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: ht,
        width: wt,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                width: wt,
                height: ht * 0.3,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('images/image2.jpeg'),
                      fit: BoxFit.cover,
                      scale: 0.3,
                      opacity: 0.7),
                ),
              ),
            ),
            Positioned(
              top: ht * 0.2,
              child: Container(
                height: ht * 0.8,
                width: wt,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: EdgeInsets.all(0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        borderOnForeground: true,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Colors.white.withOpacity(1),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: ht * 0.2,
                                width: wt * 0.33,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 2,
                                      blurRadius: 1,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  //color: Colors.black,
                                  image: DecorationImage(
                                    // centerSlice: new Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
                                    // opacity: 0.75,
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      images[index],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('name'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('address'),
                                  Text('address line2'),
                                  Text('address line 3 with pin code'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('price range'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Contact no.'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Email'),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                ),
              ),
            ),
          ],
          // SizedBox(
          //   width: wt * 0.5,
          //   child: Container(
          //     color: Colors.black,
          //   ),
          // )
        ),
      ),
    );
  }
}

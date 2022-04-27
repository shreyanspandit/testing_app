import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<String> values = [
    'venue',
    'cakes',
    'photographer',
    'cameraman',
    'accomodation',
    'wedding planner',
    'food',
    'invitation',
  ];
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // actions: <Widget>[IconButton(onPressed: onPressed, icon: icon)],
        backgroundColor: Colors.red.shade300,
        title: const Text(
          'ALL VENDORS',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Card(
        // padding: const EdgeInsets.only(
        //   left: 20,
        //   right: 20,
        //   top: 20,
        //   bottom: 2,
        // ),
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            // childAspectRatio: 0.66,
          ),
          // children: [
          //   Card(
          //     child: Center(
          //       child: Image.asset('assets/venue.jpeg'),
          //     ),
          //   ),
          //   Card(
          //     child: Center(
          //       child: Image.asset('assets/venue.jpeg'),
          //     ),
          //   ),
          //   Card(
          //     child: Center(
          //       child: Image.asset('assets/venue.jpeg'),
          //     ),
          //   ),
          //   Card(
          //     child: Center(
          //       child: Image.asset('assets/venue.jpeg'),
          //     ),
          //   ),
          // ],
          // itemCount: 30,
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2,
          //   crossAxisSpacing: 20,
          //   mainAxisSpacing: 5,
          // ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset(images[index]),
              //     Center(
              //       child: Text(values[index]),
              //     ),
              //   ],
              // ),
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black,
                //     spreadRadius: 1,
                //     blurRadius: 1,
                //   ),
                // ],
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
      ),
    );
  }
}

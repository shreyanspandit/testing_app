import 'package:flutter/material.dart';
import 'package:location/location.dart';

class mainscreen extends StatefulWidget {
  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  var _job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'hello',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                )),
                child: Container(
                  child: DropdownButton(
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.grey.shade800,
                    ),
                    hint: Text(
                      'Select vendor',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    underline: Container(),
                    isDense: true,
                    iconSize: 40,
                    elevation: 0,
                    value: _job,
                    style: TextStyle(color: Colors.blue),
                    onChanged: (value) {
                      setState(() {
                        _job = value;
                      });
                    },
                    items: <String>[
                      'Venue',
                      'Invitation cards',
                      'caterer',
                      'choreographer',
                      'photographer',
                      'videographer',
                      'website',
                      'wedding cake',
                      'wedding planner/coordinator',
                      'wedding officiants',
                      'celebrity',
                      'bartender',
                      'mehandi artists',
                      'art/band/musician',
                      'dancer',
                      'bridesmaids',
                      'decorator',
                      'ghodi/baggi/elephant',
                      'helicopter',
                      'vehicles',
                      'parlour beauticians',
                      'pagdi',
                      'guest room',
                      'hawan samagri',
                      'gifts',
                      'attire',
                      'dresses',
                      'honeymoon package',
                      'marriage rings',
                      'marriage jewellery',
                      'anchor/host',
                      'spa',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Container(),
              // ListTile(
              //   title: Text("Date: ${pickeddate.day},"
              //       "${pickeddate.month},"
              //       "${pickeddate.year}"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

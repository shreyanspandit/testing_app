import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class vendorAsker extends StatefulWidget {
  @override
  State<vendorAsker> createState() => _vendorAskerState();
}

class _vendorAskerState extends State<vendorAsker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red.shade50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Vendor Details',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade300,
                ),
              ),
              //
              // SizedBox(
              //   height: 10,
              // ),
              // buttonItem(
              //   'assets/google.svg',
              //   'Continue with Google',
              //   29,
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // buttonItem(
              //   'assets/phone.svg',
              //   'Continue with phone',
              //   29,
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Text(
              //   'OR',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontWeight: FontWeight.w800,
              //     fontSize: 20,
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              SizedBox(
                height: 35,
              ),
              Card(
                elevation: 20,
                margin: EdgeInsets.symmetric(horizontal: 25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    textItem(' Full Name', false),
                    SizedBox(
                      height: 15,
                    ),
                    textItem(' Email ', false),
                    SizedBox(
                      height: 15,
                    ),
                    textItem(' Phone Number', false),
                    SizedBox(
                      height: 15,
                    ),
                    textItem(' Address', true),
                    SizedBox(
                      height: 15,
                    ),
                    textItem(' Range of cost of services offered', true),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        uploadButton(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 55,
              ),
              colorButton(),
              SizedBox(
                height: 25,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       ' If you already have an Account?',
              //       style: TextStyle(
              //         fontSize: 15,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //     Text(
              //       ' LOGIN',
              //       style: TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.w800,
              //         color: Colors.red.shade300,
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonItem(
    String imagepath,
    String name,
    double size,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width - 75,
      height: 50,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagepath,
              height: size,
              width: size,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }

  Widget textItem(String name, bool obscureText) {
    return Container(
      width: MediaQuery.of(context).size.width - 75,
      height: 50,
      color: Colors.white,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: name,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          floatingLabelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            color: Colors.red.shade300,
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(1),
          // )),
        ),
      ),
    );
  }

  Widget colorButton() {
    return Container(
      width: MediaQuery.of(context).size.width - 145,
      height: 40,
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
          color: Colors.red.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade200.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 0.1,
          )),
      child: Center(
        child: Text(
          'Save Details',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  Widget vendorButton() {
    return Container(
      width: 115,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.red.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade200.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 0.1,
          )),
      child: Center(
        child: Text(
          'Vendor',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  Widget uploadButton() {
    return Container(
      width: 175,
      height: 40,
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
          color: Colors.red.shade300.withOpacity(0.7),
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade200.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 0.1,
          )),
      child: Center(
        child: Text(
          'Upload Images',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  Widget customerButton() {
    return Container(
      width: 135,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.red.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade200.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 0.1,
          )),
      child: Center(
        child: Text(
          'Customer',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

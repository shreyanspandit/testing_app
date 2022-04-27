import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SigninPage extends StatefulWidget {
  @override
  State<SigninPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red.shade50,
          child: Card(
            elevation: 30,
            margin: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 90,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            shadowColor: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade300,
                    fontFamily: 'Roboto',
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // buttonItem('assets/google.svg', 'Continue with Google', 29),
                // SizedBox(
                //   height: 15,
                // ),
                // buttonItem('assets/phone.svg', 'Continue with phone', 29),
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
                  height: 95,
                ),
                textItem(' Email id/Phone number'),
                SizedBox(
                  height: 15,
                ),
                textItem(' Password'),
                SizedBox(
                  height: 95,
                ),
                colorButton(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " If you don't have an Account?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      ' SIGN UP',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.red.shade300,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  ' Forgot Password?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.red.shade300,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonItem(String imagepath, String name, double size) {
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

  Widget textItem(String name) {
    return Container(
      width: MediaQuery.of(context).size.width - 75,
      height: 50,
      color: Colors.white,
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(30)),

          labelText: name,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
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
          'Sign In',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

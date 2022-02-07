// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';
import 'Splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image3.jpeg'),
            scale: 0.6,
          ),
        ),
        child: AnimatedSplashScreen(
          splash: Icons.add_photo_alternate_outlined,
          duration: 3000,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.black.withOpacity(0.1),

          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.blue.shade600,
          //       ),
          //       Container(
          //         child: Text(
          //           'Splash sceen',
          //           style: TextStyle(
          //             fontSize: 54,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          nextScreen: LoginPage(),
        ),
      ),
    );
  }
}

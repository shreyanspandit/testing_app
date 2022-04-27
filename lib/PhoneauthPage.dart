import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class PhoneauthPage extends StatefulWidget {
  @override
  State<PhoneauthPage> createState() => _PhoneauthPageState();
}

class _PhoneauthPageState extends State<PhoneauthPage> {
  int start = 30;
  bool wait = false;
  String buttonName = "Send";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade700,
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
        title: const Text(
          'Signup',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              textField(),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                      ),
                    ),
                    const Text(
                      "Enter the 4 digit OTP",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              otpField(),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Send OTP again in  ",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "00:$start",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                    const TextSpan(
                      text: "  sec",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              colorButton(),
              const SizedBox(
                height: 30,
              ),
              // Container(height: 395, child: builders(context)),
              //   Container(
              //     height: 60,
              //     width: MediaQuery.of(context).size.width - 240,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(19),
              //     ),
              //     child: const Center(
              //       child: Text(
              //         "Submit",
              //         style: const TextStyle(
              //           fontWeight: FontWeight.w600,
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }

  Widget builders(BuildContext context) {
    return Scaffold(
      // This is handled by the search bar itself.
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // buildMap(),
          // buildBottomNavigationBar(),
          buildFloatingSearchBar(),
        ],
      ),
    );
  }

  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          wait = false;
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  Widget otpField() {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width - 120,
      fieldWidth: 40,
      outlineBorderRadius: 10,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: Colors.white,
        borderColor: Colors.black,
        enabledBorderColor: Colors.black,
      ),
      style: const TextStyle(fontSize: 25),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }

  Widget colorButton() {
    return Container(
      width: MediaQuery.of(context).size.width - 145,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.redAccent.shade700,
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
              color: Colors.red.shade200.withOpacity(0.5),
              spreadRadius: 3,
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
          'Submit',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget textField() {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Enter your phone no.",
          hintStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 17,
            horizontal: 19,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 10,
            ),
            child: Text(
              "+91",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          suffixIcon: InkWell(
            onTap: wait
                ? null
                : () {
                    startTimer();
                    setState(() {
                      start = 30;
                      wait = true;
                      buttonName = "Resend";
                    });
                  },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 19,
              ),
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: wait ? Colors.grey : Colors.black,
                ),
              ),
            ),
          ),
        ),
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
}

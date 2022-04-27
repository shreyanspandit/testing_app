import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:testing_app/PhoneauthPage.dart';
import 'package:testing_app/SigninPage.dart';
import 'package:testing_app/SignupPage.dart';
import 'package:testing_app/homePage.dart';
import 'package:testing_app/vendorAsker.dart';
import 'package:testing_app/vendorDetail.dart';

class Homecontroller extends StatefulWidget {
  const Homecontroller({Key? key}) : super(key: key);

  @override
  State<Homecontroller> createState() => _HomecontrollerState();
}

class _HomecontrollerState extends State<Homecontroller> {
  late PersistentTabController controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      homePage(),
      SigninPage(),
      vendorDetail(),
      SignupPage(),
      PhoneauthPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        // activeColorPrimary: CupertinoColors.systemRed,
        activeColorPrimary: Colors.red.shade300,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.tag),
        title: ("Offers"),
        // activeColorPrimary: CupertinoColors.activeBlue,
        activeColorPrimary: Colors.red.shade300,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.tag),
        // icon: Container(
        //   child:
        //   decoration: BoxDecoration(
        //     color: Colors.black,
        //     image: DecorationImage(
        //       image: AssetImage('assets/venue.jpeg'),
        //     ),
        //   ),
        // ),
        title: ("HomePage"),

        // opacity: 0.5,
        activeColorPrimary: Colors.red.shade300,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.hand_thumbsup_fill),
        title: ("Recommended"),
        //activeColorPrimary: CupertinoColors.activeBlue,
        activeColorPrimary: Colors.red.shade300,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profile"),
        // activeColorPrimary: CupertinoColors.activeBlue,
        activeColorPrimary: Colors.red.shade300,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        // borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
      // floatingActionButton: FloatingActionButton.small(
      //     onPressed: () {}), // Choose the nav bar style with this property.
    );
  }
}

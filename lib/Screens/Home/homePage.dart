
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwallet/Screens/Home/stakPages/dashbord.dart';
import 'package:iwallet/Screens/Home/stakPages/market.dart';
import 'package:iwallet/Screens/Home/stakPages/money/moneyClass.dart';
import 'package:iwallet/Screens/Home/stakPages/profilePage.dart';
import 'package:iwallet/module/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        bottomNavigationBar: getFooter(),
        body: getBody(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              selectedTab(4);
            },
            child: Icon(
              Icons.search,
              size: 25,
            ),
            backgroundColor: primary
            //params
            ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        DashbaordPage(),
        MarketPage(),
        MoneyPage(),
        ProfilePage()
      ],
    );
  }

  Widget getFooter() {
    List<IconData> iconItems = [
      Icons.wallet,
      Icons.currency_exchange,
      Icons.wordpress_rounded,
      Icons.person,
    ];
    return AnimatedBottomNavigationBar(
      activeColor: primary,
      splashColor: secondary,
      inactiveColor: Colors.black.withOpacity(0.5),
      icons: iconItems,
      activeIndex: pageIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      onTap: (index) {
        selectedTab(index);
      },
      //other params
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}

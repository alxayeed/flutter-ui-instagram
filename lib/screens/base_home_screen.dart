import 'package:flutter/material.dart';
import 'package:flutter_insta/screens/account_screen.dart';
import 'package:flutter_insta/screens/home_screen.dart';
import 'package:flutter_insta/screens/reels_screen.dart';
import 'package:flutter_insta/screens/search_screen.dart';
import 'package:flutter_insta/screens/shop_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _updateIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_call), label: "reels"),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "account"),
            ]),
      ),
    );
  }
}

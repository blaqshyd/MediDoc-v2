import 'package:demo_app/src/views/favorites.dart';
import 'package:demo_app/src/views/messages.dart';
import 'package:demo_app/src/views/search.dart';
import 'package:flutter/material.dart';

import '../common_widgets/custom_navbar.dart';
import 'home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final List<Widget> views = [
    const HomeScreen(),
    const Messages(),
    const Favorite(),
    const Search()
  ];
  int selectedIndex = 0;

  void onBottomNavItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        onItemTapped: onBottomNavItemTapped,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   // clipBehavior: Clip.none,
      //   backgroundColor: Colors.black45,
      //   onPressed: () {},
      //   child: const Icon(
      //     Iconsax.shopping_bag,
      //     color: Colors.white,
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: views[selectedIndex],
      ),
    );
  }
}

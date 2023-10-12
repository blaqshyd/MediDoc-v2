import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medidoc/views/search.dart';

import '../common_widgets/custom_navbar.dart';
import 'notifications.dart';
import 'home/home.dart';
import 'messages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final List<Widget> views = [
    const HomeScreen(),
    const Messages(),
    const Notifications(),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // clipBehavior: Clip.none,
        backgroundColor: Colors.black45,
        onPressed: () {},
        child: const Icon(
          Iconsax.shopping_bag,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: views[selectedIndex],
      ),
    );
  }
}

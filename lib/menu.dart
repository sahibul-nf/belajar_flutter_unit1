import 'package:flutter/material.dart';
import 'package:belajar_flutter/explore_page.dart';
import 'package:belajar_flutter/my_home_page.dart';
import 'package:belajar_flutter/second_page.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int activeIndex = 0;
  List pages = [
    const ExplorePage(),
    const MyHomePage(),
    const SecondPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        // method 1 to set selected icon color using selectedIconTheme
        // selectedIconTheme: const IconThemeData(
        //   color: Colors.orange,
        // ),
        // method 2 to set selected icon color using selectedItemColor
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: activeIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          // set state
          setState(() {
            activeIndex = index;
            print(activeIndex);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "TV Views",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

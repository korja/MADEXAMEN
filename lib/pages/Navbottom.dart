import 'package:flutter/material.dart';
import 'package:madexam/pages/HomePage.dart';
import 'package:madexam/pages/account.dart';
import 'package:madexam/pages/search.dart';

class NavBottom extends StatefulWidget {
  const NavBottom({super.key});

  @override
  State<NavBottom> createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  int currentIndex = 0;

  List pages = [
    const HomePage(),
    const search(),
    const account(),
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StraksNL'),
        centerTitle: true,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        onTap: onTapped,
      ),
    );
  }
}

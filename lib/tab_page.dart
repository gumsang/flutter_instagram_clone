import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'account_page.dart';
import 'home_page.dart';
import 'search_page.dart';

class TabPage extends StatefulWidget {
  const TabPage(this.user, {Key? key}) : super(key: key);

  final User user;

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  List _page = [];

  @override
  void initState() {
    _page = [
      HomePage(widget.user),
      SearchPage(),
      AccountPage(widget.user),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _page[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Acoount'),
        ],
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}

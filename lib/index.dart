import 'package:flutter/material.dart';
import 'package:TIKODC/amis.dart';
import 'Accueil.dart';
import 'creation.dart';
import 'inbox.dart';
import 'inscription.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    PageAccueil(),
    PageAmis(),
    PageCreation(),
    PageInbox(),
    PageInscription(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
            // backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'Now'),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tiktok_add.png',
              height: 40,
            ),
            label: '',
            // backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.message),
            label: 'Inbox',
            // backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Profile',
            // backgroundColor: Colors.black,
          ),
        ],
        backgroundColor: Color(0xFF141518),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

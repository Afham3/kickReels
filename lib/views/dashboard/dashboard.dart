import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/HomePage/homepage.dart';


class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _index = 0;
  final List<Widget> _pages = const [
    Homepage(),
    Homepage(),
    Homepage(),
    Homepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:  AppColors.whiteColor,
        currentIndex: _index,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 196, 192, 192),
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'My Teams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'FAQ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages[_index],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:woibelajar/core/constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  final List<Widget> _screens = [
      const Center(child: Text('Home', style: TextStyle(fontSize: 20))),
      const Center(child: Text('Blokir Aplikasi', style: TextStyle(fontSize: 20))),
      const Center(child: Text('Profile', style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryBlue,
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        items: [
          
        ],
      )
    );
  }
}
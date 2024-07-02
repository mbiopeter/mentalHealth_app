import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/abaut_screen.dart';
import 'package:mentalhealth/screens/chart_screen.dart';
import 'package:mentalhealth/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final activeColor = Colors.blue[600];
  static const deactiveColor = Color.fromARGB(255, 189, 189, 189);

  final List<Widget> _tabs = [
    const HomeScreen(),
    const AbautScreen(),
    const ChartScreen(),
  ];

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOutQuint,
    );
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _showBottomNavBar =
        _currentIndex != 2; // Hide bottom nav bar on ChartScreen

    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: _showBottomNavBar
          ? BottomNavigationBar(
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: activeColor,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: deactiveColor,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: _currentIndex == 0 ? activeColor : deactiveColor,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.dashboard,
                    color: _currentIndex == 1 ? activeColor : deactiveColor,
                  ),
                  label: 'Abaut',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                    color: _currentIndex == 2 ? activeColor : deactiveColor,
                  ),
                  label: 'Chart',
                ),
              ],
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
            )
          : null,
      body: PageView(
        controller: _pageController,
        children: _tabs,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

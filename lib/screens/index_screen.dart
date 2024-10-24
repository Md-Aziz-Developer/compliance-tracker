import 'package:compliance_tracker/screens/compliance_screen.dart';
import 'package:compliance_tracker/screens/home_screen.dart';
import 'package:compliance_tracker/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  final int? initialIndex;
  const IndexScreen({Key? key, this.initialIndex}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  String partnerName = '';
  late int _currentIndex;
  @override
  void initState() {
    super.initState();
    setState(() {
      _currentIndex = widget.initialIndex ?? 0;
    });
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const ComplianceScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration:
            const BoxDecoration(border: Border(top: BorderSide(width: 1))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 20,
          unselectedFontSize: 18,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Compliance'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

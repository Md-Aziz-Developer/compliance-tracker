import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            // backgroundColor: const Color.fromRGBO(238, 242, 248, 1),
            centerTitle: true,
            // title: Image.asset(
            //   'assets/images/Compliance_tracker.png',
            //   width: 100,
            // ),
            title: Text('Compliance Checker'),
            elevation: 3,
          )),
    );
  }
}

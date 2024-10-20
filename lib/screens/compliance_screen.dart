import 'package:flutter/material.dart';

class ComplianceScreen extends StatefulWidget {
  const ComplianceScreen({super.key});

  @override
  State<ComplianceScreen> createState() => _ComplianceScreenState();
}

class _ComplianceScreenState extends State<ComplianceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            centerTitle: true,
            // title: Image.asset(
            //   'assets/images/Compliance_tracker.png',
            //   width: 100,
            // ),
            title: const Text('Compliance Checker'),
            elevation: 3,
          )),
      body: const Center(child: Text('Hi There')),
    );
  }
}

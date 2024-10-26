import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Dashboard'),
      ),
      body: const Column(
        children: [
          Card(
            color: Colors.black, // Card background color
            elevation: 4.0, // Card elevation to give shadow effect
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(10)), // Rounded corners
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}

import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 160,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 0,
              left: 80,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

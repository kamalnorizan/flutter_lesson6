import 'package:flutter/material.dart';
import 'package:lesson6/widgets/drawer.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: const [
          Center(
            child: Hero(
              tag: 'page4-tag',
              child: Icon(
                Icons.abc_sharp,
                size: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

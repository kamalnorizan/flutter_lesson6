import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Page2 extends StatelessWidget {
  Page2(this.name, {super.key});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}

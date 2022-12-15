import 'package:flutter/material.dart';
import 'package:lesson6/models/user.dart';

// ignore: must_be_immutable
class Page2 extends StatelessWidget {
  Page2(this.arguments, {super.key});
  List<User> arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(children: [
          Text(arguments[0].name.toString()),
          Text(arguments[1].name.toString()),
          Text(arguments[2].name.toString()),
          Text(arguments[3].name.toString()),
          Text(arguments[4].name.toString()),
        ]),
      ),
    );
  }
}

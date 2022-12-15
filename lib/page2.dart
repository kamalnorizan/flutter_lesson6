import 'package:flutter/material.dart';
import 'package:lesson6/models/user.dart';

// ignore: must_be_immutable
class Page2 extends StatelessWidget {
  Page2(this.arguments, {super.key});
  List<User> arguments;
  final List<Tab> theTab = <Tab>[
    const Tab(
      text: 'Utama',
    ),
    const Tab(
      text: 'Page Kedua',
    ),
    const Tab(
      text: 'Page Ketiga',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: theTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('First Tab'),
          bottom: TabBar(
            tabs: theTab,
          ),
        ),
        body: const TabBarView(
          // children: theTab.map((Tab tab) {
          //   final String label = tab.text.toString().toUpperCase();
          //   return Center(
          //     child: Text('Ini adalah tab $label'),
          //   );
          // }).toList(),
          children: [
            Text('Ni tab 1'),
            Text('Ni tab 2'),
            Text('Ni tab 3'),
          ],
        ),
      ),
    );
  }
}

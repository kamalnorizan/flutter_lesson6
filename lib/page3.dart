import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Lets go to page 3'),
            subtitle: const Text('This is now in page 3'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Lets go to page 3'),
            subtitle: const Text('This is now in page 3'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.pushNamed(context, '/page5');
            },
          ),
          ListTile(
            leading: const Hero(
              tag: 'page4-tag',
              child: Icon(Icons.alarm),
            ),
            title: const Text('Lets go to page 3'),
            subtitle: const Text('This is now in page 3'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.pushNamed(context, '/page4');
            },
          ),
        ],
      ),
    );
  }
}

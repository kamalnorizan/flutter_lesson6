import 'package:flutter/material.dart';
import 'package:lesson6/page5.dart';

import '../main.dart';
import '../page3.dart';
import '../page4.dart';
import '../stack.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Home'),
            subtitle: const Text('This is now in page 3'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Lets go to page 3'),
            subtitle: const Text('This is now in page 3'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Page3()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Lets go to page 4'),
            subtitle: const Text('This is now in page 4'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Page4()));
            },
          ),
          ListTile(
            leading: const Hero(
              tag: 'page4-tag',
              child: Icon(Icons.alarm),
            ),
            title: const Text('Lets go to page 5'),
            subtitle: const Text('This is now in page 5'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Page5()),
              );
            },
          ),
          ListTile(
            leading: const Hero(
              tag: 'page4-tag',
              child: Icon(Icons.alarm),
            ),
            title: const Text('Lets go to Stack Screen'),
            subtitle: const Text('This is now in Stack Screen'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StackScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lesson6/models/user.dart';
import 'package:lesson6/page2.dart';
import 'package:lesson6/page3.dart';
import 'package:lesson6/page4.dart';
import 'package:lesson6/page5.dart';
import 'package:lesson6/widgets/drawer.dart';

void main() => runApp(
      const MaterialApp(
        initialRoute: '/',
        onGenerateRoute: _getRoute,
        // routes: {
        //   '/': (context) => const MyApp(),
        //   '/page2': (context) => Page2('test'),
        //   '/page3': (context) => const Page3(),
        // },
        home: MyApp(),
      ),
    );

Route<dynamic> _getRoute(RouteSettings settings) {
  print(settings);
  if (settings.name == '/page2') {
    List<User> user = settings.arguments as List<User>;
    return _buildRoute(settings, Page2(user));
  } else if (settings.name == '/page3') {
    return _buildRoute(settings, const Page3());
  } else if (settings.name == '/page4') {
    return _buildRoute(settings, const Page4());
  } else if (settings.name == '/page5') {
    return _buildRoute(settings, const Page5());
  }

  return _buildRoute(settings, const Page3());
}

MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
  return MaterialPageRoute(builder: (ctx) => builder);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    String dropdownvalue = 'Item 3';
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
        ),
        drawer: const CustomDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.album_rounded),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Contact Us',
            ),
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 0,
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 5,
                  ),
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                child: const Text('Elevated Button'),
              ),
              IconButton(
                color: Colors.green,
                iconSize: 80,
                onPressed: () {},
                icon: const Icon(
                  Icons.access_alarm,
                ),
              ),
              DropdownButton(
                value: dropdownvalue,
                items: items.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    dropdownvalue = value!;
                  });
                },
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: const Text('Button'),
              ),
              TextField(
                controller: nameController,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: const Text('Main'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      var obj = [
                        User(name: 'Amir'),
                        User(name: 'Aiman'),
                        User(name: 'Zaid'),
                        User(name: 'Diana'),
                        User(name: 'Fairul'),
                      ];

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2(obj)),
                      );

                      // Navigator.pushNamed(context, '/page2', arguments: obj);
                    },
                    child: const Text('Page 2'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Page3()),
                      // );

                      Navigator.pushNamed(context, '/page3');
                    },
                    child: const Text('Page 3'),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}

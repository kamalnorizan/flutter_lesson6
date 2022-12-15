import 'package:flutter/material.dart';
import 'package:lesson6/page2.dart';
import 'package:lesson6/page3.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const MyApp(),
          '/page2': (context) => const Page2(),
          '/page3': (context) => const Page3(),
        },
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Page2()),
                      // );
                      Navigator.pushNamed(context, '/page2');
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
              )
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

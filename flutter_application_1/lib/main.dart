import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.person,
                size: 50,
              ),
              Text('AHOM TECNOLOGIES')
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('HOME'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('ABOUT US'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('OUR SERVICES'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('PRIVACY POLICIES'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('conditions'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('CONTACT US'),
            )
          ],
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          elevation: 0,
        ),
        body:  Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/hallo.jpg'))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahom technologies',
                        style: TextStyle(fontSize: 60),
                      ),
                      SizedBox(
                          width: 400,
                          child: Text(
                              'There is no such thing as a boring projects and building features in an innovation world full of adventures ',
                              style: TextStyle(fontSize: 20))),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('visit now'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        
                        
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/gr.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ])),
        );
  }
}

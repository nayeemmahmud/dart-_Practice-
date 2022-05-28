// ignore_for_file: prefer_initializing_formals

import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

void main() {
  runApp(const MyApp());

  var d = pera(2, 10);
  print(d);

  peraNai();

  List city = ['dhaka', 'cp', 'ctg'];

  for (var a in city) {
    print(a);
  }

  try {
    int a = 10 ~/ 0;
    print(a);
  } catch (e) {
    print(e);
  }

  int amount = -10;

  try {
    if (amount < 0) {
      throw AmountExeption;
    }
  } catch (e) {
    print('please enter the valid Amount ');
  }

  var newStudents1 = Students(5, 'sabbir');

  print(newStudents1.name);

  newStudents1.study();

  newStudents1.present();

  var newStudents2 = Students(15, ' labib');

  print(newStudents2.name);
  print(newStudents2.rollNumber);

  Cycle objCycle = Cycle();
  Cycle objCycle2 = Cycle();

  Cycle.myNamedConstructor('Red');

  Rectangle rect = Rectangle();
  rect.draw();

  /// interface class 32
  Car car1 = Car();
  car1.move();
  car1.stop();
  car1.run();

  // fixed and growable list
  var nameList = List<int>.filled(5, 0, growable: false);
  print(nameList);

  // growable list

  var nameList2 = List.filled(0, 0, growable: true);
  nameList2.add(2);
  nameList2.add(4);
  nameList2.add(6);
  nameList2.add(8);
  nameList2.add(10);
  nameList2.add(11);
  nameList2.add(18);

  nameList2.remove(4);
  nameList2.removeAt(3);

  print(nameList2);

  // set -- it's almost same as list but st ignores duplicates

  Set<int> nameList3 = Set();
  nameList3.add(2);
  nameList3.add(4);
  nameList3.add(4);
  nameList3.add(8);
  nameList3.add(10);
  nameList3.add(11);
  nameList3.add(18);

  print(nameList3);

  // extension class 41

  print(10.toWord);

  // class 41 date time example
  var date = DateTime.now();
  print(date.myCustomdate);
}

//  extension date time class 41

extension on DateTime {
  get myCustomdate {
    return "${this.day}/${this.month}/${this.year}";
  }
}

//  extension class 41
extension on int {
  get toWord {
    switch (this) {
      case 1:
        return 'One';
      case 2:
        return 'Two';
      case 3:
        return 'Three';
      case 4:
        return 'Four';
      case 5:
        return 'Five';
      case 6:
        return 'Six';
      case 7:
        return 'Seven';

      default:
        return 'Please enter the valid number';
    }
  }
}

////// interface class 32 - interface is used by using impliments
class Motor {
  run() {
    print('Motor is running');
  }
}

class Vehicle {
  move() {
    print('vehicle is moving');
  }

  stop() {
    print('vehicle has stop');
  }
}

class Car implements Vehicle, Motor {
  @override
  move() {
    print('car is moving');
  }

  @override
  stop() {
    print('car has stop');
  }

  @override
  run() {
    // TODO: implement run
    print('this motor is running');
  }
}

//////// abstract example
abstract class Shape {
  void draw();
}

class Rectangle extends Shape {
  @override
  void draw() {
    // TODO: implement drawp
    print('drawing');
  }
}

class Bike {
  String? color;

  Bike() {
    print('This is bike constructor');
  }
}

class Cycle extends Bike {
  int? price;

  Cycle() {
    print('this is cycle constructor');
  }

  Cycle.myNamedConstructor(String color) {
    print('named Constructor Of Cycle');
  }
}

int pera(int a, int b) {
  int d = a * b;

  return d;
}

void peraNai() {
  int a = 10;
  int b = 30;

  int c = a + b;

  print('his roll is $c');
}

class AmountExeption implements Exception {
  errorMsg() {
    return "please enter the valid Amount";
  }
}

class Students {
  int? rollNumber;
  String? name;

  Students(int roll, String name) {
    rollNumber = roll;
    this.name = name;
  }

  study() {
    print('in class seven');
  }

  present() {
    print('no');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Nayeems home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

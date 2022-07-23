import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Point || FLutter UI || Flutter Example App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Text( 'Flutter Demo Home Page'),
    );
  }
}

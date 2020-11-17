import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Integration Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World!'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('This is a fully Flutter page, integrated into your native app!',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
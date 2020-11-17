import 'package:flutter/material.dart';
void main() => runApp(MyApp());

@pragma('vm:entry-point')
void german() => runApp(MyApp(isInGerman: true));

class MyApp extends StatelessWidget {
  final bool isInGerman;
  MyApp({this.isInGerman = false});
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Integration Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloWorldPage(
        isInGerman: isInGerman,
      ),
    );
  }
}

class HelloWorldPage extends StatelessWidget {
  final bool isInGerman;
  HelloWorldPage({this.isInGerman = false});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isInGerman ? 'Hallo Welt!' : 'Hello World!'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            isInGerman
                ? 'Dies ist eine vollständig Flutter Seite, die in Ihre native App integriert ist!'
                : 'This is a fully Flutter page, integrated into your native app!',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
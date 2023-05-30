import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/start/role.dart';
import 'package:flutter_application_1/start/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Envirobetter.id',
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.black),
        ),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: const Scaffold(
        body: MyHomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MyStart())));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/envi.png'),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset('images/envi2.png'),
          )
        ],
      ),
    );
  }
}

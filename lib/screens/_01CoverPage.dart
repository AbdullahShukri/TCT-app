import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tct/screens/Wrapper.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: coverPage(),
    );
  }
}

class coverPage extends StatefulWidget {
  const coverPage({super.key});

  @override
  State<StatefulWidget> createState() => _coverPageState();
}

class _coverPageState extends State<coverPage> {
  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/01 cover.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: InkWell(
          child: IconButton(
            onPressed: () {
              Get.to(() => Wrapper());
              print('Enter pressed');
            },
            icon: const Icon(Icons.login),
            color: Colors.white,
            alignment: Alignment(0.0, 0.85),
            iconSize: ScreenWidth * 0.12,
          ),
        ),
      ),
    );
  }
}

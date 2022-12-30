import 'package:flutter/material.dart';

class errorMsg extends StatefulWidget {
  const errorMsg({super.key});

  @override
  State<errorMsg> createState() => _errorMsgState();
}

class _errorMsgState extends State<errorMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Container(
                      padding: EdgeInsets.all(16),
                      height: 100,
                      decoration: const BoxDecoration(
                          color: Color(0xffd14233),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Text(
                            'Error!',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Dart is an object-oriented programming language developed by Google',
                          ),
                        ],
                      )),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ));
              },
              child: const Text('Show Msg'))),
    );
  }
}

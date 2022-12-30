import 'package:flutter/material.dart';
import 'package:tct/screens/home/Home.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // return either home/authenticate pages.
    return Home(); // return auth() in case user is logged in.
  }
}
import 'package:flutter/material.dart';
import 'package:tct/screens/authenticate/Authenticate.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // return either home/authenticate pages.
    return Authenticate(); // return auth() in case user is logged in.
  }
}
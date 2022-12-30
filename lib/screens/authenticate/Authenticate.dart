
// Should proxy authenticate pages.
import 'package:flutter/material.dart';
import 'package:tct/screens/authenticate/_03SignUpPage.dart';
class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();

}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
      child: SignUp(),
    );
  }
}
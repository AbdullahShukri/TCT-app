import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tct/models/UserModel.dart';
import 'package:tct/screens/authenticate/Authenticate.dart';

import 'home/Home.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
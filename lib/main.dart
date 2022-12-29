import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:tct/_00ErrorMsg.dart';
import 'package:tct/_01CoverPage.dart';
import 'package:tct/_02LoginPage.dart';
import 'package:tct/_03SignUpPage.dart';
import 'package:tct/_04RecoveryPassword.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: coverPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

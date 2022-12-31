import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tct/screens/_01CoverPage.dart';

void main() async {
  // await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      home: coverPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

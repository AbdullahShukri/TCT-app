import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tct/screens/_01CoverPage.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: coverPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

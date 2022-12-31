import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tct/screens/_01CoverPage.dart';

void main() async {
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyAxv8_-3jOsTkutpusuabn_AfHrX1Zdjy8",
          appId: "1:162047492420:android:02b9734520b0b3fa0c5711",
          messagingSenderId: "162047492420",
          projectId: "user-auth-29099")
  );
  runApp(
    GetMaterialApp(
      home: coverPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

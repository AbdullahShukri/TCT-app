import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:tct/models/UserModel.dart';
import 'package:tct/screens/Wrapper.dart';
import 'package:tct/screens/_01CoverPage.dart';
import 'package:tct/services/Auth.dart';

void main() async {
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyAxv8_-3jOsTkutpusuabn_AfHrX1Zdjy8",
          appId: "1:162047492420:android:02b9734520b0b3fa0c5711",
          messagingSenderId: "162047492420",
          projectId: "user-auth-29099")
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      value: AuthService().user,
        initialData: null,
        child: MaterialApp(
          home: Wrapper(),
        ),

    );
  }
}

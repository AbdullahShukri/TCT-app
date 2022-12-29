import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tct/_01CoverPage.dart';

class MsgPassword extends StatefulWidget {
  const MsgPassword({super.key});

  @override
  State<MsgPassword> createState() => _MsgPasswordState();
}

class _MsgPasswordState extends State<MsgPassword> {
  Widget buildBack() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
      child: Row(
        children: [
          SizedBox(
            height: ScreenHeight * 0.05,
            width: ScreenWidth * 0.30,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => coverPage());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff135779),
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                'رجوع ',
                style: TextStyle(
                  fontSize: ScreenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inspiration',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                image: AssetImage('assets/00.1 background.jpg'),
                fit: BoxFit.fill,
              ))),
              Container(
                height: double.infinity,
                width: double.infinity,
                /*decoration: const BoxDecoration(
                        end: Alignment.bottomCenter,
                        colors: [
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                    Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                    ])),*/
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: ScreenWidth * 0.40),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: ScreenWidth * 0.30,
                        color: Color(0xff135779),
                      ),
                      SizedBox(height: ScreenHeight * 0.05),
                      Text(
                        ' تم إرسال رسالة ',
                        style: TextStyle(
                          color: Color(0xff135779),
                          fontSize: ScreenWidth * 0.07,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inspiration',
                        ),
                      ),
                      Text(
                        'في البريد الاكتروني',
                        style: TextStyle(
                          color: Color(0xff135779),
                          fontSize: ScreenWidth * 0.07,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inspiration',
                        ),
                      ),
                      SizedBox(
                        height: ScreenHeight * 0.05,
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        size: ScreenWidth * 0.20,
                        color: Color(0xff067526),
                      ),
                      SizedBox(height: ScreenHeight * 0.05),
                      buildBack(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../_04RecoveryPassword.dart';
import '../home/Home.dart';
import '_03SignUpPage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isRememberMe = false;

  Widget buildUserNameLogin() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ': اسم المستخدم ',
              style: TextStyle(
                color: Color(0xff135779),
                fontSize: ScreenHeight * 0.02,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inspiration',
                height: ScreenHeight * 0.002,
              ),
            ),
          ],
        ),
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.80,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Color(0xcc000000),
            ),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffCDDCE3),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffCDDCE3)),
                  borderRadius: BorderRadius.circular(50),
                ),
                contentPadding: EdgeInsets.fromLTRB(0, 14, 14, 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff135779),
                ),
                hintText: '   ... ادخل اسم المستخدم ',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: ScreenHeight * 0.015,
                  fontFamily: 'Inspiration',
                ),
                helperStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }

  Widget buildUserPasswordLogin() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          ': كلمة السر ',
          style: TextStyle(
            color: Color(0xff135779),
            fontSize: ScreenHeight * 0.02,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
            height: ScreenHeight * 0.002,
          ),
        ),
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.80,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Color(0xcc000000),
            ),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffCDDCE3),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffCDDCE3)),
                  borderRadius: BorderRadius.circular(50),
                ),
                contentPadding: EdgeInsets.fromLTRB(0, 14, 14, 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff135779),
                ),
                hintText: '   ... ادخل كلمة السر ',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: ScreenHeight * 0.015,
                  fontFamily: 'Inspiration',
                ),
                helperStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPassBtn() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: ScreenHeight * 0.05,
      width: ScreenWidth * 0.70,
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          Get.to(() => recoveryPass());
        },
        child: Text(
          'هل نسيت كلمة السر؟',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            fontFamily: 'Inspiration',
            color: Color(0xff135779),
          ),
        ),
      ),
    );
  }

  /*Widget buildRemember() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: const Color(0xff135779)),
            child: Checkbox(
              value: isRememberMe,
              checkColor: const Color(0xffffffff),
              activeColor: const Color(0xff135779),
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          const Text(
            'تذكرني ',
            style: TextStyle(
              color: Color(0xff135779),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }*/

  Widget buildloginAndSignUp() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
        height: ScreenHeight * 0.10,
        width: ScreenWidth * 0.90,
        padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
        child: Row(
          children: [
            SizedBox(
              height: ScreenHeight * 0.06,
              width: ScreenWidth * 0.35,

              child: ElevatedButton(

                onPressed: () {
                  Get.to(() => Home());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff135779),
                  padding: EdgeInsets.all(0),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  ' تسجيل دخول ',
                  style: TextStyle(
                    fontSize: ScreenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inspiration',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: ScreenWidth * 0.05,
            ),
            SizedBox(
              width: ScreenWidth * 0.35,
              height: ScreenHeight * 0.06,

              child: ElevatedButton(

                onPressed: () {
                  Get.to(() => SignUp());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff135779),
                  padding: EdgeInsets.all(0),
                  elevation: 10,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)

                  ),
                ),
                child: Text(
                  'تسجيل جديد ',
                  style: TextStyle(
                    fontSize: ScreenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inspiration',
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  /*Widget buildSignText() {
    return Container(
      child: Text(
        ' ليس لديك حساب ؟',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Inspiration',

        ),
      ),
    );
  }*/

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
                  alignment: Alignment.center,
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
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenWidth * 0.05,
                      vertical: ScreenHeight * 0.10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: ScreenWidth * 0.30,
                        color: Color(0xff135779),
                      ),
                      Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: Color(0xff135779),
                          fontSize: ScreenWidth * 0.09,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inspiration',
                        ),
                      ),
                      SizedBox(height: ScreenHeight * 0.03),
                      buildUserNameLogin(),
                      buildUserPasswordLogin(),
                      buildForgotPassBtn(),
                      //buildRemember(),
                      //buildSignText(),
                      buildloginAndSignUp(),
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

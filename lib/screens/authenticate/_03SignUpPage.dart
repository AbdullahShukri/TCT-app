import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tct/screens/authenticate/_02LoginPage.dart';

enum GenderType { Male, Female }

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GenderType? _genderType = GenderType.Male;

  Widget buildUserNameSign() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          ': اسم المستخدم ',
          style: TextStyle(
            color: Color(0xff135779),
            fontSize: ScreenHeight * 0.03,
            height: ScreenHeight * 0.002,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
          ),
        ),
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.80,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
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

  Widget buildEmail() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          ': الايميل ',
          style: TextStyle(
            color: Color(0xff135779),
            fontSize: ScreenHeight * 0.03,
            height: ScreenHeight * 0.002,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
          ),
        ),
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.80,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
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
                  Icons.email,
                  color: Color(0xff135779),
                ),
                hintText: '   ... ادخل الايميل ',
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

  Widget buildUserPasswordSign() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          ': كلمة السر ',
          style: TextStyle(
            color: Color(0xff135779),
            fontSize: ScreenHeight * 0.03,
            height: ScreenHeight * 0.002,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
          ),
        ),
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.80,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
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

  Widget buildUserConfirmPassword() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          ':تأكيد كلمة السر ',
          style: TextStyle(
            color: Color(0xff135779),
            fontSize: ScreenHeight * 0.03,
            height: ScreenHeight * 0.002,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
          ),
        ),
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.80,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
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
                  Icons.add_moderator,
                  color: Color(0xff135779),
                ),
                hintText: '   ... ادخل كلمة السر مرة أخرى',
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

  Widget buildOld() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          ': العمر ',
          style: TextStyle(
            color: Color(0xff135779),
            fontSize: ScreenHeight * 0.03,
            height: ScreenHeight * 0.002,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
          ),
        ),
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.80,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
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
                  Icons.calendar_today,
                  color: Color(0xff135779),
                ),
                hintText: '   ... ادخل العمر ',
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

  Widget buildGender() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          ': الجنس ',
          style: TextStyle(
            color: Color(0xff135779),
            fontSize: ScreenHeight * 0.03,
            height: ScreenHeight * 0.002,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('ذكر',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff135779),
                  fontFamily: 'Inspiration',
                )),
            Radio<GenderType>(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff135779)),
              value: GenderType.Male,
              groupValue: _genderType,
              onChanged: (GenderType? value) {
                setState(() {
                  _genderType = value;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('أنثى',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff135779),
                  fontFamily: 'Inspiration',
                )),
            Radio<GenderType>(
              value: GenderType.Female,
              groupValue: _genderType,
              onChanged: (GenderType? value) {
                setState(() {
                  _genderType = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget buildlogin() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
        height: ScreenHeight * 0.08,
        width: ScreenWidth * 0.60,
        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
        child: Row(
          children: [
            SizedBox(
              height: ScreenHeight * 0.06,
              width: ScreenWidth * 0.25,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => login());
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
                  'تسجيل ',
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
              width: ScreenWidth * 0.25,
              height: ScreenHeight * 0.6,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => login());
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
                  'إلغاء ',
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

  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(children: <Widget>[
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/00.2 background.jpg'),
                  fit: BoxFit.fill,
                ))),
            AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      /* decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color(0xffffffff),
                            Color(0xffffffff),
                            Color(0xffffffff),
                            Color(0xffffffff),
                          ])),*/
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenWidth * 0.03,
                            vertical: ScreenHeight * 0.10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.account_box,
                              size: ScreenWidth * 0.30,
                              color: Color(0xff135779),
                            ),
                            Text(
                              'تسجيل جديد',
                              style: TextStyle(
                                color: Color(0xff135779),
                                fontSize: ScreenWidth * 0.10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inspiration',
                              ),
                            ),
                            SizedBox(height: 10),
                            buildUserNameSign(),
                            SizedBox(height: 10),
                            buildEmail(),
                            SizedBox(height: 10),
                            buildUserPasswordSign(),
                            SizedBox(height: 10),
                            buildUserConfirmPassword(),
                            SizedBox(height: 10),
                            buildOld(),
                            SizedBox(height: 10),
                            buildGender(),
                            SizedBox(height: 10),
                            buildlogin(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

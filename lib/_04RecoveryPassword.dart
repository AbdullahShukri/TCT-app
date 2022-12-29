import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tct/_02LoginPage.dart';
import 'package:tct/_05MsgPassword.dart';

class recoveryPass extends StatefulWidget {
  const recoveryPass({super.key});

  @override
  State<recoveryPass> createState() => _recoveryPassState();
}

class _recoveryPassState extends State<recoveryPass> {
  @override
  Widget buildEmail() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
         child: Text(
            'الايميل ',
            style: TextStyle(
              color: Color(0xff135779),
              fontSize: ScreenHeight * 0.05,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inspiration',
              height: ScreenHeight * 0.002,


            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
          ),

          height: ScreenHeight * 0.12,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color(0xcc000000),
            ),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                filled: true, fillColor: Color(0xffCDDCE3),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffCDDCE3)),
                  borderRadius: BorderRadius.circular(50),

                ),

                contentPadding: EdgeInsets.fromLTRB(0, 14, 18, 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff135779),
                ),
                hintText: '   ... ادخل الايميل ',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: ScreenHeight * 0.018,
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

  Widget buildRecovery() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Container(
        padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
        width: 500,
        child: Row(
          children: [
            SizedBox(
              width: ScreenWidth * 0.25,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => MsgPassword());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff135779),
                  padding: EdgeInsets.all(0),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child:  Text(
                  'استعادة ',
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
                child:  Text(
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
          child: Stack(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/00.1 background.jpg'),
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
                          padding:  EdgeInsets.symmetric(
                              horizontal: ScreenHeight * 0.05, vertical: ScreenWidth * 0.30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.autorenew,
                                size: 70,
                                color: Color(0xff135779),
                              ),
                              SizedBox(height: 10),
                              Text(
                                ' استعادة كلمة السر',
                                style: TextStyle(
                                  color: Color(0xff135779),
                                  fontSize: ScreenWidth * 0.08,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Inspiration',

                                ),
                              ),
                              SizedBox(height: ScreenHeight * 0.05),
                              buildEmail(),
                              SizedBox(height: 10),
                              buildRecovery(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../authenticate/_03SignUpPage.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  Widget buildSearch() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: ScreenHeight * 0.11,
          width: ScreenWidth * 0.55,
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
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Color(0xffCDDCE3)),
                borderRadius: BorderRadius.circular(50),
              ),
              contentPadding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              helperStyle: TextStyle(
                color: Colors.white,
              ),
              hintText: '   ...   البحث  ',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: ScreenHeight * 0.02,
                fontFamily: 'Inspiration',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget religin() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: ScreenWidth * 0.99,
      height: ScreenHeight * 0.50,
      padding: EdgeInsets.fromLTRB(0, ScreenHeight * 0.40, 0, 0),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(50),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {
            Get.to(() => SignUp());
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/01. Mosq.jpg',
                width: ScreenWidth * 0.55,
                height: ScreenHeight * 0.15,
              ),
              Text(
                'الجانب الديني ',
                style: TextStyle(
                  fontSize: ScreenHeight * 0.03,
                  color: Color(0xff132B57),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inspiration',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sport() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: ScreenWidth * 0.99,
      height: ScreenHeight * 0.50,
      padding: EdgeInsets.fromLTRB(0, ScreenHeight * 0.40, 0, 0),
      child: Material(
        color: Colors.white,
        elevation: 10,
        borderRadius: BorderRadius.circular(50),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {
            Get.to(() => SignUp());
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/01. Mosq.jpg',
                width: ScreenWidth * 0.55,
                height: ScreenHeight * 0.15,
              ),
              Text(
                'الجانب الرياضي ',
                style: TextStyle(
                  fontSize: ScreenHeight * 0.03,
                  color: Color(0xff132B57),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inspiration',
                ),
              ),
            ],
          ),
        ),
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
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/00.2 background.jpg'),
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
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_month),
                      iconSize: ScreenWidth * 0.10,
                      color: Color(0xff135779),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      iconSize: ScreenWidth * 0.10,
                      color: Color(0xff135779),
                    ),
                    buildSearch(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      iconSize: ScreenWidth * 0.10,
                      color: Color(0xff135779),
                    ),

                  ],
                ),
              ),




              Container(
                padding: EdgeInsets.fromLTRB(
                    ScreenWidth * 0.25, ScreenWidth * 0.30, 0, 5),
                child: Text(
                  ' فئات الأنشطة  ',
                  style: TextStyle(
                    color: Color(0xff135779),
                    fontSize: ScreenHeight * 0.04,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inspiration',
                    height: ScreenHeight * 0.01,
                  ),
                ),
              ),
              religin(),
              SizedBox(height: 50),
              sport(),

              /* Container(
                width: ScreenWidth * 0.99,
                height: ScreenHeight * 0.50,
                padding: EdgeInsets.fromLTRB(0, ScreenHeight * 0.40, 0, 0),
                child: Material(
                  color: Colors.white,
                  elevation: 10,
                  borderRadius: BorderRadius.circular(50),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {
                      Get.to(() => SignUp());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/01. Mosq.jpg',
                          width: ScreenWidth * 0.55,
                          height: ScreenHeight * 0.15,
                        ),
                        Text(
                          'الجانب الرياضي ',
                          style: TextStyle(
                            fontSize: ScreenHeight * 0.03,
                            color: Color(0xff132B57),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inspiration',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),*/
            ],
          ),

        ),
      ),

    );
  }
}

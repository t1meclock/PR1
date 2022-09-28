import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';


class ASongForMoon extends StatefulWidget {
  const ASongForMoon({Key? key}) : super(key: key);

  @override
  State<ASongForMoon> createState() => _ASongForMoon();
}

class _ASongForMoon extends State<ASongForMoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(          
          height: 997,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 47.0),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 24.0,),
                    width: 300,
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Meditate', 
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: SvgPicture.asset(
                      'assets/images/search.svg'
                    ),
                    onPressed: () { },
                  ),
                ]
              ),
              Container(
                margin: const EdgeInsets.only(top: 14.0, bottom: 14),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffEBEBEB),
                      width: 0.5),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 23.0),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff039EA2), 
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), 
                        ),
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.fromLTRB(11.5, 17.5, 11.5, 17.5),
                        elevation: 0,
                      ),
                      onPressed: () { },
                      child: const Text(
                        'All', 
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffE6FEFF), 
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), 
                        ),
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.fromLTRB(11, 17.5, 11, 17.5),
                        elevation: 0,
                      ),
                      onPressed: () { },
                      child: const Text(
                        'Bible In a Year', 
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff039EA2),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15.0),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffE6FEFF), 
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), 
                        ),
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.fromLTRB(11, 17.5, 11, 17.5),
                        elevation: 0,
                      ),
                      onPressed: () { },
                      child: const Text(
                        'Dailies', 
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff039EA2),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 11.0),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffE6FEFF), 
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), 
                        ),
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.fromLTRB(11, 17.5, 11, 17.5),
                        elevation: 0,
                      ),
                      onPressed: () { },
                      child: const Text(
                        'Minutes', 
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff039EA2),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12.0),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffE6FEFF), 
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), 
                        ),
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.fromLTRB(11, 17.5, 11, 17.5),
                        elevation: 0,
                      ),
                      onPressed: () { },
                      child: const Text(
                        'November', 
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff039EA2),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 23.0),
                    ),
                  ]
                ),  
              ),
              Container(
                margin: const EdgeInsets.only(top: 22.0),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: const Offset(0, 0.7)
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/images/bg_sun.svg"
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 46.0),
                                child: SvgPicture.asset(
                                  "assets/images/sun.svg"
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 11.0),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'A Song of Moon', 
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Start with the basics', 
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 14),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 8.0),
                              ),
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                icon:  SvgPicture.asset(
                                  "assets/images/heart.svg"
                                ),
                                onPressed: () { },
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 1.88, right: 177),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  '9 Sessions', 
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 124, 124, 124)
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 1.52),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Start', 
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 124, 124, 124)
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                "assets/images/frwd.svg", 
                                width: 4.65, 
                                height: 7.79
                              ),
                            ]
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 17.0),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          margin: const EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 0,
                                offset: const Offset(0, 0.7)
                              )
                            ]
                          ),
                          child:  Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    "assets/images/bg_orange.svg"
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0, left: 25.0),
                                    child: SvgPicture.asset(
                                      "assets/images/onepic.svg"
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 11.0),
                              ),
                              Container(                                
                                margin: const EdgeInsets.only(right: 20.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'The Sleep Hour', 
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 30.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Ashna Mukherjee', 
                                  style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 124, 124, 124)
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                              ),
                              Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    "assets/images/heart.svg", 
                                    width: 7.5, 
                                    height: 6.67,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 4, right: 30),
                                    alignment: Alignment.topLeft,
                                    child: const Text(
                                      '3 Sessions', 
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 124, 124, 124)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 4.82),
                                    alignment: Alignment.topLeft,
                                    child: const Text(
                                      'Start', 
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 124, 124, 124)
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/forward.svg"
                                  ),
                                ]
                              ),
                            ]
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          margin: const EdgeInsets.only(left: 4.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 0,
                                offset: const Offset(0, 0.7)
                              )
                            ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[ 
                                  SvgPicture.asset(
                                    "assets/images/bg_yellow.svg"
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: SvgPicture.asset(
                                      "assets/images/secpic.svg"
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 11.0),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Easy on the Mission', 
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 80.0),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                'Peter Mach', 
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 124, 124, 124)
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                              ),
                              Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    "assets/images/heart.svg", 
                                    width: 7.5, 
                                    height: 6.67,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 4, right: 41),
                                    alignment: Alignment.topLeft,
                                    child: const Text(
                                      '5 minutes', 
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 124, 124, 124)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 4.82),
                                    alignment: Alignment.topLeft,
                                    child: const Text(
                                      'Start', 
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 124, 124, 124)
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/forward.svg"
                                  ),
                                ]
                              ),
                            ]
                          ),
                        ),
                      ],
                    ),   
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 17.0),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    margin: const EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: const Offset(0, 0.7)
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: SvgPicture.asset(
                              "assets/images/bg_blue_sec.svg" 
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left: 19.73),
                              child: SvgPicture.asset(
                                "assets/images/earth.svg"
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 11.0),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 35.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Relax with Me', 
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 45.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Amanda James', 
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 124, 124, 124)
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                        ),
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/images/heart.svg", 
                              width: 7.5, 
                              height: 6.67,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 4, right: 30),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                '3 Sessions', 
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 124, 124, 124)
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 4.82),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Start', 
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 124, 124, 124)
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/images/forward.svg"
                            ),
                          ]
                        ),
                      ]
                    ),  
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    margin: const EdgeInsets.only(left: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: const Offset(0, 0.7)
                        )
                      ]
                    ),
                    child:  Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/images/bg_green.svg"
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left: 27.0),
                              child: SvgPicture.asset(
                                "assets/images/onepic.svg"
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 11.0),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Sun and Energy', 
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 65.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Micheal Hiu', 
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 124, 124, 124)
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                        ),
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/images/heart.svg", 
                              width: 7.5, 
                              height: 6.67,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 4, right: 30),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                '5 minutes', 
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 124, 124, 124)
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 4.82,),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Start', 
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 124, 124, 124)
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/images/forward.svg"
                            ),
                          ]
                        ),
                      ]
                    ),    
                  ),
                ],
              ),
            ] 
          ),
        ),
      ),
    );
  }
}
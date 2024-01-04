import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:hms/secpage.dart';
import 'package:hms/utils.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // homepagenAR (4:2)
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0x7f413c3c),
                  offset: Offset(0*fem, 60*fem),
                  blurRadius: 30*fem,
                ),
              ],
            ),
            child: SingleChildScrollView(
             // scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupumdpyeD (GHxpmu6wxTMgHJNwXhuMDP)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(15*fem, 34.92*fem, 0*fem, 356*fem),
                    height: 960*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff161717),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // framedTs (4:340)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.92*fem, 41.93*fem),
                          width: 39.08*fem,
                          height: 39.16*fem,
                          child: Image.asset(
                            'assets/page-1/images/frame-FGZ.png',
                            width: 39.08*fem,
                            height: 39.16*fem,
                          ),
                        ),
                        GestureDetector(
    onTap:(){
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>SecPage())
      );
    },
                          child: Container(
                            // autogroupcjuqiVK (GHxq8DrRCRUF432YnUCjUq)
                            width: 85*fem,
                            height: 488*fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-cjuq.png',
                              width: 85*fem,
                              height: 488*fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupzbvmEiZ (GHxqfHnz3awsN2ck8RZbvM)
                    margin: EdgeInsets.fromLTRB(0*fem, 16.14*fem, 0*fem, 0*fem),
                    width: 1378.29*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupnni9YjF (GHxrMX8x7E6awSBq2ENNi9)
                          width: double.infinity,
                          height: 292*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // frame485UN1 (4:206)
                                left: 0*fem,
                                top: 113*fem,
                                child: Container(
                                  width: 401*fem,
                                  height: 167*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(34*fem),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // subtractoob (4:207)
                                        left: 0*fem,
                                        top: 3*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 300*fem,
                                            height: 159*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/subtract-v2q.png',
                                              width: 300*fem,
                                              height: 159*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // grouphe5 (4:212)
                                        left: 27*fem,
                                        top: 11*fem,
                                        child: Container(
                                          width: 246*fem,
                                          height: 88.89*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(100*fem),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // groupbDf (4:213)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                  width: 175.16*fem,
                                                  height: 59.07*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(100*fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        // autogroupea8dfjK (GHxrhvicdepqJanGCYEA8D)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.84*fem, 0*fem),
                                                        width: 87.16*fem,
                                                        height: double.infinity,
                                                        child: Stack(
                                                          children: [
                                                            Positioned(
                                                              // rectanglebN5 (4:215)
                                                              left: 0*fem,
                                                              top: 0*fem,
                                                              child: Align(
                                                                child: SizedBox(
                                                                  width: 79.16*fem,
                                                                  height: 31.07*fem,
                                                                  child: Container(
                                                                    decoration: BoxDecoration (
                                                                      borderRadius: BorderRadius.circular(100*fem),
                                                                      color: Color(0x3dffffff),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              // rectangle6Zj (4:216)
                                                              left: 8*fem,
                                                              top: 28*fem,
                                                              child: Align(
                                                                child: SizedBox(
                                                                  width: 79.16*fem,
                                                                  height: 31.07*fem,
                                                                  child: Container(
                                                                    decoration: BoxDecoration (
                                                                      borderRadius: BorderRadius.circular(100*fem),
                                                                      color: Color(0x3dffffff),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // rectangleP33 (4:214)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                                        width: 79.16*fem,
                                                        height: 31.07*fem,
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(100*fem),
                                                          color: Color(0x3dffffff),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // groupun5 (4:217)
                                                left: 70.8448462784*fem,
                                                top: 29.8215011954*fem,
                                                child: Container(
                                                  width: 175.16*fem,
                                                  height: 59.07*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(100*fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        // rectangle2Lu (4:218)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.84*fem, 3*fem),
                                                        width: 79.16*fem,
                                                        height: 31.07*fem,
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(100*fem),
                                                          color: Color(0x3dffffff),
                                                        ),
                                                      ),
                                                      Container(
                                                        // autogroupg4uv8uj (GHxrs681r8VvZzm9kPg4UV)
                                                        width: 87.16*fem,
                                                        height: double.infinity,
                                                        child: Stack(
                                                          children: [
                                                            Positioned(
                                                              // rectangle5py (4:219)
                                                              left: 8*fem,
                                                              top: 28.0000152588*fem,
                                                              child: Align(
                                                                child: SizedBox(
                                                                  width: 79.16*fem,
                                                                  height: 31.07*fem,
                                                                  child: Container(
                                                                    decoration: BoxDecoration (
                                                                      borderRadius: BorderRadius.circular(100*fem),
                                                                      color: Color(0x3dffffff),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              // rectanglezS9 (4:220)
                                                              left: 0*fem,
                                                              top: 0*fem,
                                                              child: Align(
                                                                child: SizedBox(
                                                                  width: 79.16*fem,
                                                                  height: 31.07*fem,
                                                                  child: Container(
                                                                    decoration: BoxDecoration (
                                                                      borderRadius: BorderRadius.circular(100*fem),
                                                                      color: Color(0x3dffffff),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group6zy (4:222)
                                        left: 24*fem,
                                        top: 25*fem,
                                        child: Container(
                                          width: 92*fem,
                                          height: 114*fem,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // buildings2dj (4:223)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                                child: Text(
                                                  'Buildings',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.48*fem,
                                                    color: Color(0xff131215),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // 7QH (4:225)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                child: Text(
                                                  '04',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 32*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.96*fem,
                                                    color: Color(0xff131215),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // viewentirelist21T (4:224)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  'View entire list',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.36*fem,
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xff131215),
                                                    decorationColor: Color(0xff131215),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // hotel7802432618448517ob (9:5)
                                        left: 133*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 162*fem,
                                            height: 162*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/hotel-7802432-6184485-1.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // groupcVT (4:226)
                                left: 324*fem,
                                top: 114*fem,
                                child: Container(
                                  width: 401.29*fem,
                                  height: 163.66*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(34*fem),
                                  ),
                                  child: Container(
                                    // frame485k5s (4:227)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(34*fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // subtract5P3 (4:228)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 300*fem,
                                              height: 159*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/subtract-JTw.png',
                                                width: 300*fem,
                                                height: 159*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // groupyjK (4:236)
                                          left: 22*fem,
                                          top: 6*fem,
                                          child: Container(
                                            width: 246*fem,
                                            height: 145.45*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(100*fem),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // group6ow (4:237)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                    width: 175.16*fem,
                                                    height: 59.07*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(100*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // autogroup8hgzC6H (GHxs8fWPuwYaXCXfP98hGZ)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.84*fem, 0*fem),
                                                          width: 87.16*fem,
                                                          height: double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                // rectangleiaR (4:239)
                                                                left: 0*fem,
                                                                top: 0*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // rectangle2LD (4:240)
                                                                left: 8*fem,
                                                                top: 28*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // rectangleYZT (4:238)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                                          width: 79.16*fem,
                                                          height: 31.07*fem,
                                                          decoration: BoxDecoration (
                                                            borderRadius: BorderRadius.circular(100*fem),
                                                            color: Color(0x19ffffff),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // groupUCD (4:241)
                                                  left: 70.8448462784*fem,
                                                  top: 29.8215011954*fem,
                                                  child: Container(
                                                    width: 175.16*fem,
                                                    height: 115.63*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(100*fem),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          // autogroupkqgmam3 (GHxsGk7GSTDo5FDovvKQgm)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 28.48*fem),
                                                          width: double.infinity,
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                // rectanglei6Z (4:242)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 25*fem, 8.84*fem, 0*fem),
                                                                width: 79.16*fem,
                                                                height: 31.07*fem,
                                                                decoration: BoxDecoration (
                                                                  borderRadius: BorderRadius.circular(100*fem),
                                                                  color: Color(0x19ffffff),
                                                                ),
                                                              ),
                                                              Container(
                                                                // rectangle2N9 (4:244)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
                                                                width: 79.16*fem,
                                                                height: 31.07*fem,
                                                                decoration: BoxDecoration (
                                                                  borderRadius: BorderRadius.circular(100*fem),
                                                                  color: Color(0x19ffffff),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // rectangleM9X (4:243)
                                                          width: 79.16*fem,
                                                          height: 31.07*fem,
                                                          decoration: BoxDecoration (
                                                            borderRadius: BorderRadius.circular(100*fem),
                                                            color: Color(0x19ffffff),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // grouptfF (4:246)
                                                  left: 10.103225708*fem,
                                                  top: 16.6446838379*fem,
                                                  child: Container(
                                                    width: 92*fem,
                                                    height: 116.81*fem,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // rooms1Uy (4:247)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.17*fem),
                                                          child: Text(
                                                            'Rooms',
                                                            style: SafeGoogleFont (
                                                              'Poppins',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.48*fem,
                                                              color: Color(0xff131215),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // Jys (4:249)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.64*fem),
                                                          child: Text(
                                                            '750',
                                                            style: SafeGoogleFont (
                                                              'Poppins',
                                                              fontSize: 32*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.96*fem,
                                                              color: Color(0xff131215),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // viewentirelistEMj (4:248)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                          child: Text(
                                                            'View entire list',
                                                            style: SafeGoogleFont (
                                                              'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.36*fem,
                                                              decoration: TextDecoration.underline,
                                                              color: Color(0xff19181a),
                                                              decorationColor: Color(0xff19181a),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // livingroom598952652519811LvZ (8:4)
                                          left: 136*fem,
                                          top: 3*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 156*fem,
                                              height: 156*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/living-room-5989526-5251981-1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // groupre1 (4:250)
                                left: 658*fem,
                                top: 104*fem,
                                child: Container(
                                  width: 401.29*fem,
                                  height: 188*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(34*fem),
                                  ),
                                  child: Container(
                                    // frame485P89 (4:251)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(34*fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // subtract8Ld (4:252)
                                          left: 0*fem,
                                          top: 8*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 300*fem,
                                              height: 159*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/subtract-m4y.png',
                                                width: 300*fem,
                                                height: 159*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // grouprGd (4:257)
                                          left: 13*fem,
                                          top: 16*fem,
                                          child: Container(
                                            width: 246*fem,
                                            height: 88.89*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(100*fem),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // groupmuP (4:258)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                    width: 175.16*fem,
                                                    height: 59.07*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(100*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // autogroupk2cmsBj (GHxsaQGWbjeWrmcyeGk2CM)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.84*fem, 0*fem),
                                                          width: 87.16*fem,
                                                          height: double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                // rectangleCE1 (4:260)
                                                                left: 0*fem,
                                                                top: 0*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // rectangle6qB (4:261)
                                                                left: 8*fem,
                                                                top: 28*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // rectangleRMf (4:259)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                                          width: 79.16*fem,
                                                          height: 31.07*fem,
                                                          decoration: BoxDecoration (
                                                            borderRadius: BorderRadius.circular(100*fem),
                                                            color: Color(0x19ffffff),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // groupXvV (4:262)
                                                  left: 70.8448462784*fem,
                                                  top: 29.8215011954*fem,
                                                  child: Container(
                                                    width: 175.16*fem,
                                                    height: 59.07*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(100*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          // rectanglerSy (4:263)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.84*fem, 3*fem),
                                                          width: 79.16*fem,
                                                          height: 31.07*fem,
                                                          decoration: BoxDecoration (
                                                            borderRadius: BorderRadius.circular(100*fem),
                                                            color: Color(0x19ffffff),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupzmedyGh (GHxsh9aGauUovDBuRLzMEd)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                          width: 87.16*fem,
                                                          height: double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                // rectangleW1j (4:264)
                                                                left: 8*fem,
                                                                top: 28*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // rectangleDRw (4:265)
                                                                left: 0*fem,
                                                                top: 0*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // doublebed584960648980921jfB (8:3)
                                          left: 129*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 188*fem,
                                              height: 188*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/double-bed-5849606-4898092-1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // groupSZb (4:267)
                                          left: 32.1036224365*fem,
                                          top: 30.6446838379*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0*fem, 41.17*fem, 0*fem, 0*fem),
                                            width: 92*fem,
                                            height: 116.81*fem,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // 8hK (4:270)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.64*fem),
                                                  child: Text(
                                                    '150',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 32*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.96*fem,
                                                      color: Color(0xff131215),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // viewentirelistqLq (4:269)
                                                  'View entire list',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.36*fem,
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xff19181a),
                                                    decorationColor: Color(0xff19181a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // allocatedbedskih (7:2)
                                          left: 34*fem,
                                          top: 32*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 128*fem,
                                              height: 24*fem,
                                              child: Text(
                                                'Allocated Beds',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  letterSpacing: 0.48*fem,
                                                  color: Color(0xff131215),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // groupE85 (4:271)
                                left: 977*fem,
                                top: 85*fem,
                                child: Container(
                                  width: 401.29*fem,
                                  height: 192*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(34*fem),
                                  ),
                                  child: Container(
                                    // frame485KvD (4:272)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(34*fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // subtract3LR (4:273)
                                          left: 0*fem,
                                          top: 27*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 300*fem,
                                              height: 159*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/subtract.png',
                                                width: 300*fem,
                                                height: 159*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // groupvQD (4:278)
                                          left: 13*fem,
                                          top: 35*fem,
                                          child: Container(
                                            width: 246*fem,
                                            height: 88.89*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(100*fem),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // groupSdT (4:279)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                    width: 175.16*fem,
                                                    height: 59.07*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(100*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // autogrouptat59Gy (GHxsxe8TNFunH11b8Ytat5)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.84*fem, 0*fem),
                                                          width: 87.16*fem,
                                                          height: double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                // rectangle5gR (4:281)
                                                                left: 0*fem,
                                                                top: 0*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // rectanglePh7 (4:282)
                                                                left: 8*fem,
                                                                top: 28*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // rectangleWFw (4:280)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                                          width: 79.16*fem,
                                                          height: 31.07*fem,
                                                          decoration: BoxDecoration (
                                                            borderRadius: BorderRadius.circular(100*fem),
                                                            color: Color(0x19ffffff),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // groupESq (4:283)
                                                  left: 70.8448462784*fem,
                                                  top: 29.8215011954*fem,
                                                  child: Container(
                                                    width: 175.16*fem,
                                                    height: 59.07*fem,
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(100*fem),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          // rectanglexNq (4:284)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.84*fem, 3*fem),
                                                          width: 79.16*fem,
                                                          height: 31.07*fem,
                                                          decoration: BoxDecoration (
                                                            borderRadius: BorderRadius.circular(100*fem),
                                                            color: Color(0x19ffffff),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupawmjHR7 (GHxt5Jc24y8Pk2dgz5aWmj)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                          width: 87.16*fem,
                                                          height: double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                // rectangleQkd (4:285)
                                                                left: 8*fem,
                                                                top: 28*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // rectanglejH7 (4:286)
                                                                left: 0*fem,
                                                                top: 0*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79.16*fem,
                                                                    height: 31.07*fem,
                                                                    child: Container(
                                                                      decoration: BoxDecoration (
                                                                        borderRadius: BorderRadius.circular(100*fem),
                                                                        color: Color(0x19ffffff),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // removebgpreview13Yh (4:287)
                                          left: 67*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 288*fem,
                                              height: 192*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/removebg-preview-1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // groupaHj (4:288)
                                          left: 32.1036376953*fem,
                                          top: 49.6446838379*fem,
                                          child: Container(
                                            width: 92*fem,
                                            height: 116.81*fem,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // hostellershNM (4:289)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.17*fem),
                                                  child: Text(
                                                    'Hostellers',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.48*fem,
                                                      color: Color(0xff131215),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // cVK (4:291)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.64*fem),
                                                  child: Text(
                                                    '187',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 32*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.5*ffem/fem,
                                                      letterSpacing: 0.96*fem,
                                                      color: Color(0xff131215),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // viewentirelistKPj (4:290)
                                                  'View entire list',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.36*fem,
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xff19181a),
                                                    decorationColor: Color(0xff19181a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // helloadmineS1 (4:292)
                                left: 0*fem,
                                top: 46*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 210*fem,
                                    height: 48*fem,
                                    child: Text(
                                      'Hello, Admin',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 32*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        letterSpacing: 0.96*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // groupL3w (4:324)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(27*fem, 14*fem, 107*fem, 15*fem),
                                  width: 291*fem,
                                  height: 53*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x10ffffff),
                                    borderRadius: BorderRadius.circular(24*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frameQpV (4:326)
                                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 23*fem, 0*fem),
                                        width: 18*fem,
                                        height: 18*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/frame-Rho.png',
                                          width: 18*fem,
                                          height: 18*fem,
                                        ),
                                      ),
                                      Text(
                                        // searchhereKwT (4:329)
                                        'Search here...',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: 0.48*fem,
                                          color: Color(0xff535353),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // frame486Fq7 (4:331)
                                left: 1012*fem,
                                top: 11*fem,
                                child: Container(
                                  width: 256*fem,
                                  height: 39*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // groupmYZ (4:332)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 53*fem, 1.5*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // hmsadminJHb (4:333)
                                              'HMS Admin',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.36*fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                            Text(
                                              // admingmailcomEww (4:334)
                                              'admin@gmail.com',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                letterSpacing: 0.36*fem,
                                                color: Color(0xff5d5d5d),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // groupaW1 (4:335)
                                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // frame7Vw (4:338)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                              width: 39*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(56*fem),
                                              ),
                                              child: Align(
                                                // imageFMF (4:339)
                                                alignment: Alignment.topRight,
                                                child: SizedBox(
                                                  width: 41*fem,
                                                  height: 40*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/image.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // frameZsj (4:336)
                                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                              width: 12*fem,
                                              height: 6*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/frame.png',
                                                width: 12*fem,
                                                height: 6*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroup7ccutQD (GHy5G9dYffgBk8NGWj7ccu)
                          padding: EdgeInsets.fromLTRB(0*fem, 10.94*fem, 0*fem, 0*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroup4jxvcLD (GHxtQTimLWdQCz3jKE4JxV)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134.29*fem, 24.7*fem),
                                width: double.infinity,
                                height: 306.09*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // groupv61 (4:145)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32.1*fem, 0*fem),
                                      width: 836.02*fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // rectangleqim (4:146)
                                            left: 0*fem,
                                            top: 1.4139404297*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 836.02*fem,
                                                height: 304.67*fem,
                                                child: Container(
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(24*fem),
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // ellipse1jJM (4:147)
                                            left: 676.8430175781*fem,
                                            top: 256.6813354492*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 133.76*fem,
                                                height: 11.32*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/ellipse-1.png',
                                                  width: 133.76*fem,
                                                  height: 11.32*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // screenshot20230202154606remove (4:148)
                                            left: 619.32421875*fem,
                                            top: 49.8498535156*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 184.59*fem,
                                                height: 222.33*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/screenshot2023-02-02154606-removebg-preview-1.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // groupw9X (4:149)
                                            left: 32.102355957*fem,
                                            top: 0*fem,
                                            child: Container(
                                              width: 737.04*fem,
                                              height: 246.98*fem,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // autogroupxear3yF (GHxwm2oEETn4DQDsrGxeAR)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22.32*fem),
                                                    width: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // salesaTP (4:193)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 26.12*fem, 438.89*fem, 0*fem),
                                                          child: Text(
                                                            'Sales',
                                                            style: SafeGoogleFont (
                                                              'Poppins',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.5*ffem/fem,
                                                              color: Color(0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autolayouthorizontalV4Z (4:184)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.4*fem, 15.12*fem),
                                                          padding: EdgeInsets.fromLTRB(11.63*fem, 10*fem, 45.25*fem, 10*fem),
                                                          decoration: BoxDecoration (
                                                            border: Border.all(color: Color(0xff515151)),
                                                            borderRadius: BorderRadius.circular(6*fem),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                // frameZKK (4:185)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.63*fem, 0*fem),
                                                                width: 9.75*fem,
                                                                height: 10.83*fem,
                                                                child: Image.asset(
                                                                  'assets/page-1/images/frame-9mw.png',
                                                                  width: 9.75*fem,
                                                                  height: 10.83*fem,
                                                                ),
                                                              ),
                                                              Container(
                                                                // 2yb (4:190)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 0*fem),
                                                                child: Text(
                                                                  '2023',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 12*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.2125*ffem/fem,
                                                                    color: Color(0xff000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                // framewam (4:191)
                                                                width: 7*fem,
                                                                height: 3.5*fem,
                                                                child: Image.asset(
                                                                  'assets/page-1/images/frame-vZs.png',
                                                                  width: 7*fem,
                                                                  height: 3.5*fem,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // autolayouthorizontalU4u (4:181)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.12*fem),
                                                          padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 10*fem, 8*fem),
                                                          decoration: BoxDecoration (
                                                            color: Color(0xfffad85d),
                                                            borderRadius: BorderRadius.circular(6*fem),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                // vectorMPb (4:182)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                                width: 12*fem,
                                                                height: 13.5*fem,
                                                                child: Image.asset(
                                                                  'assets/page-1/images/vector-rMj.png',
                                                                  width: 12*fem,
                                                                  height: 13.5*fem,
                                                                ),
                                                              ),
                                                              Text(
                                                                // downloadThX (4:183)
                                                                'Download',
                                                                style: SafeGoogleFont (
                                                                  'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.5*ffem/fem,
                                                                  color: Color(0xff161717),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // groupCf7 (4:150)
                                                    width: 636.71*fem,
                                                    height: 174.54*fem,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          // groupkRj (4:151)
                                                          left: 44.1422119141*fem,
                                                          top: 14.4103164673*fem,
                                                          child: Opacity(
                                                            opacity: 0.25,
                                                            child: Container(
                                                              padding: EdgeInsets.fromLTRB(0*fem, 31.91*fem, 0*fem, 32.94*fem),
                                                              width: 592.57*fem,
                                                              height: 130.69*fem,
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // linepRb (4:153)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32.97*fem),
                                                                    width: double.infinity,
                                                                    height: 1*fem,
                                                                    decoration: BoxDecoration (
                                                                      color: Color(0xff332d5b),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // lineMAd (4:154)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29.88*fem),
                                                                    width: double.infinity,
                                                                    height: 1*fem,
                                                                    decoration: BoxDecoration (
                                                                      color: Color(0xff332d5b),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // lineH4H (4:155)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 31.94*fem),
                                                                    width: double.infinity,
                                                                    height: 1*fem,
                                                                    decoration: BoxDecoration (
                                                                      color: Color(0xff332d5b),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          // group21s (4:157)
                                                          left: 0*fem,
                                                          top: 0*fem,
                                                          child: Container(
                                                            width: 616.65*fem,
                                                            height: 174.54*fem,
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Opacity(
                                                                  // groupjBB (4:158)
                                                                  opacity: 0.25,
                                                                  child: Container(
                                                                    margin: EdgeInsets.fromLTRB(54.84*fem, 0*fem, 0*fem, 2.09*fem),
                                                                    padding: EdgeInsets.fromLTRB(49.49*fem, 0*fem, 54.84*fem, 0*fem),
                                                                    child: Row(
                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [
                                                                        Container(
                                                                          // linen9T (4:160)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52.17*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // linehvd (4:161)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50.83*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // lineT97 (4:162)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48.15*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // lineCcV (4:163)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50.83*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // lineMEV (4:164)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49.49*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // lineJ9j (4:165)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49.49*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // lineptm (4:166)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50.83*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // linemp1 (4:167)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49.49*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // lineXHP (4:168)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56.18*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // line4o7 (4:169)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54.84*fem, 0*fem),
                                                                          width: 0*fem,
                                                                          height: 1*fem,
                                                                          decoration: BoxDecoration (
                                                                            color: Color(0xff3b375b),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // autogroup96gdoVo (GHxxKGNX43sEqB3e7r96gd)
                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.53*fem),
                                                                  width: double.infinity,
                                                                  height: 146*fem,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // autolayoutverticalj8Z (4:174)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34.18*fem, 0*fem),
                                                                        height: double.infinity,
                                                                        child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              // kqhP (4:175)
                                                                              '50k',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff515151),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 14*fem,
                                                                            ),
                                                                            Text(
                                                                              // kmL9 (4:176)
                                                                              '40k',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff515151),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 14*fem,
                                                                            ),
                                                                            Text(
                                                                              // kW2q (4:177)
                                                                              '30k',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff515151),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 14*fem,
                                                                            ),
                                                                            Text(
                                                                              // kqL1 (4:178)
                                                                              '20k',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff515151),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 14*fem,
                                                                            ),
                                                                            Text(
                                                                              // kB8y (4:179)
                                                                              '10k',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff515151),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // groupXid (4:171)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 5.39*fem, 0*fem, 0*fem),
                                                                        width: 560.47*fem,
                                                                        height: 120.52*fem,
                                                                        child: Image.asset(
                                                                          'assets/page-1/images/group.png',
                                                                          width: 560.47*fem,
                                                                          height: 120.52*fem,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // autogroupn8tdF8q (GHxxaWS7z2TAQj2r4RN8tD)
                                                                  margin: EdgeInsets.fromLTRB(51.9*fem, 0*fem, 47.75*fem, 0*fem),
                                                                  width: double.infinity,
                                                                  height: 22.92*fem,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // autogroupjpm3MBs (GHxxm5xq2JarmA5nJXJpm3)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41.73*fem, 0*fem),
                                                                        height: double.infinity,
                                                                        child: Text(
                                                                          '1',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // TVo (4:195)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 1.92*fem),
                                                                        child: Text(
                                                                          '2',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // NMs (4:196)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 43*fem, 0*fem),
                                                                        child: Text(
                                                                          '3',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // tb7 (4:197)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 41*fem, 0*fem),
                                                                        child: Text(
                                                                          '4',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // pjf (4:198)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 41*fem, 0*fem),
                                                                        child: Text(
                                                                          '5',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // xL5 (4:199)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 44*fem, 0*fem),
                                                                        child: Text(
                                                                          '6',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // 5Qh (4:200)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 41*fem, 0*fem),
                                                                        child: Text(
                                                                          '7',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // 13T (4:201)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 43*fem, 0*fem),
                                                                        child: Text(
                                                                          '8',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // jVF (4:202)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 6.08*fem, 39*fem, 0*fem),
                                                                        child: Text(
                                                                          '9',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // r45 (4:203)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 44*fem, 0*fem),
                                                                        child: Text(
                                                                          '10',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // yPb (4:204)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 0*fem, 0*fem),
                                                                        child: Text(
                                                                          '11',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 12*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.2125*ffem/fem,
                                                                            color: Color(0xff515151),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          // goo (4:205)
                                                          left: 607.897644043*fem,
                                                          top: 158.6227874756*fem,
                                                          child: Align(
                                                            child: SizedBox(
                                                              width: 13*fem,
                                                              height: 15*fem,
                                                              child: Text(
                                                                '12',
                                                                style: SafeGoogleFont (
                                                                  'Inter',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.2125*ffem/fem,
                                                                  color: Color(0xff515151),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // hostelfeesconnectionbA5 (9:6)
                                            left: 269*fem,
                                            top: 267.05859375*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 200*fem,
                                                height: 24*fem,
                                                child: Text(
                                                  'Hostel Fees Connection',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.48*fem,
                                                    color: Color(0xff131215),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // groupgBX (4:85)
                                      padding: EdgeInsets.fromLTRB(32.1*fem, 25.05*fem, 36.83*fem, 21.11*fem),
                                      width: 375.88*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(32*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // calendarAcV (4:88)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.82*fem),
                                            child: Text(
                                              'Calendar',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group1171274964t2h (4:89)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // autogroupdk3opBF (GHxtgCmXyEuRM1hto4dk3o)
                                                  margin: EdgeInsets.fromLTRB(1.34*fem, 0*fem, 6.75*fem, 21.58*fem),
                                                  width: double.infinity,
                                                  height: 34*fem,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // autolayouthorizontal8xd (4:135)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 103*fem, 0*fem),
                                                        padding: EdgeInsets.fromLTRB(11.63*fem, 8*fem, 51.35*fem, 8*fem),
                                                        height: double.infinity,
                                                        decoration: BoxDecoration (
                                                          border: Border.all(color: Color(0xff000000)),
                                                          borderRadius: BorderRadius.circular(8*fem),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // frameQfF (4:136)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.63*fem, 0*fem),
                                                              width: 9.75*fem,
                                                              height: 10.83*fem,
                                                              child: Image.asset(
                                                                'assets/page-1/images/frame-d8R.png',
                                                                width: 9.75*fem,
                                                                height: 10.83*fem,
                                                              ),
                                                            ),
                                                            Container(
                                                              // feb2023JEq (4:141)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 0*fem),
                                                              child: Text(
                                                                'Feb  2023',
                                                                style: SafeGoogleFont (
                                                                  'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.5*ffem/fem,
                                                                  color: Color(0xff000000),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // frameohP (4:142)
                                                              width: 7*fem,
                                                              height: 3.5*fem,
                                                              child: Image.asset(
                                                                'assets/page-1/images/frame-Tbj.png',
                                                                width: 7*fem,
                                                                height: 3.5*fem,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // view8zZ (4:144)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0.47*fem, 0*fem, 0*fem),
                                                        child: Text(
                                                          'View ',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.5*ffem/fem,
                                                            letterSpacing: 0.36*fem,
                                                            decoration: TextDecoration.underline,
                                                            color: Color(0xff000000),
                                                            decorationColor: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // group1171274965abf (4:90)
                                                  width: double.infinity,
                                                  height: 162.1*fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // vector8NH (4:91)
                                                        left: 0*fem,
                                                        top: 52.4945259094*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 231.41*fem,
                                                            height: 27.79*fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-FCZ.png',
                                                              width: 231.41*fem,
                                                              height: 27.79*fem,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // group2iZ (4:92)
                                                        left: 6.688293457*fem,
                                                        top: 0*fem,
                                                        child: Container(
                                                          width: 300.25*fem,
                                                          height: 162.1*fem,
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                // autogrouprxjhLUM (GHxuJmYwYgz6pFgd4vrxJH)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32.49*fem, 0*fem),
                                                                height: double.infinity,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      // sFLR (4:93)
                                                                      margin: EdgeInsets.fromLTRB(1.03*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        'S',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // Zc1 (4:130)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '27',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // gAq (4:102)
                                                                      margin: EdgeInsets.fromLTRB(1.03*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '3',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // bYh (4:109)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.32*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '10',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // vqs (4:116)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.32*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '17',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // 3Qh (4:123)
                                                                      '24',
                                                                      style: SafeGoogleFont (
                                                                        'Poppins',
                                                                        fontSize: 12*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.5*ffem/fem,
                                                                        color: Color(0xff000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                // autogroupszeyz53 (GHxuaRmWtxeSMsPxdDszEy)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32.49*fem, 0*fem),
                                                                height: double.infinity,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      // mhVF (4:94)
                                                                      margin: EdgeInsets.fromLTRB(1.35*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        'M',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // RAM (4:131)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '28',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // M41 (4:103)
                                                                      margin: EdgeInsets.fromLTRB(1.03*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '4',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // 5Eu (4:110)
                                                                      margin: EdgeInsets.fromLTRB(2.03*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '11',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // bU9 (4:117)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.32*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '18',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // KQ9 (4:124)
                                                                      '25',
                                                                      style: SafeGoogleFont (
                                                                        'Poppins',
                                                                        fontSize: 12*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.5*ffem/fem,
                                                                        color: Color(0xff000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                // autogroupceqdfU1 (GHxuq61kqivanXmP6zCEQD)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32.49*fem, 0*fem),
                                                                height: double.infinity,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      // tzFP (4:95)
                                                                      margin: EdgeInsets.fromLTRB(2.7*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        'T',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // hvV (4:132)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '29',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // 3UZ (4:104)
                                                                      margin: EdgeInsets.fromLTRB(1.03*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '5',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // y7K (4:111)
                                                                      margin: EdgeInsets.fromLTRB(2.35*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '12',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // 6hj (4:118)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.32*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '19',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // EJ9 (4:125)
                                                                      '26',
                                                                      style: SafeGoogleFont (
                                                                        'Poppins',
                                                                        fontSize: 12*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.5*ffem/fem,
                                                                        color: Color(0xff000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                // autogroupyfkrz2R (GHxv6QuZ4A8BxVhQy6yfkR)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32.15*fem, 0*fem),
                                                                height: double.infinity,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      // w6LM (4:96)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.66*fem, 10.82*fem),
                                                                      child: Text(
                                                                        'W',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // pGM (4:133)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.34*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '30',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // XgZ (4:105)
                                                                      margin: EdgeInsets.fromLTRB(0.69*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '6',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // rD3 (4:112)
                                                                      margin: EdgeInsets.fromLTRB(2.01*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '13',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // yHf (4:119)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.34*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '20',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // Hp9 (4:126)
                                                                      margin: EdgeInsets.fromLTRB(1.34*fem, 0*fem, 0*fem, 0*fem),
                                                                      child: Text(
                                                                        '27',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                // autogroupzxndc5j (GHxvKKhi3HUzvVDV4SZXnd)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32.49*fem, 0*fem),
                                                                height: double.infinity,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      // tLGd (4:97)
                                                                      margin: EdgeInsets.fromLTRB(2.7*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        'T',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // FeV (4:134)
                                                                      margin: EdgeInsets.fromLTRB(2.35*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '31',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // pLD (4:106)
                                                                      margin: EdgeInsets.fromLTRB(2.7*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '7',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // YX7 (4:113)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.32*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '14',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // sZP (4:120)
                                                                      margin: EdgeInsets.fromLTRB(2.35*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '21',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // c1B (4:127)
                                                                      '28',
                                                                      style: SafeGoogleFont (
                                                                        'Poppins',
                                                                        fontSize: 12*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.5*ffem/fem,
                                                                        color: Color(0xff000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                // autogroupwdftkt5 (GHxvVuER5ZchGvGRJYWDfT)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32.49*fem, 0*fem),
                                                                height: double.infinity,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      // fUJH (4:98)
                                                                      margin: EdgeInsets.fromLTRB(2.7*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        'F',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // b81 (4:100)
                                                                      margin: EdgeInsets.fromLTRB(3.38*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '1',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // K41 (4:107)
                                                                      margin: EdgeInsets.fromLTRB(1.03*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '8',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // Egm (4:114)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.32*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '15',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // AaR (4:121)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '22',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // u2D (4:128)
                                                                      '29',
                                                                      style: SafeGoogleFont (
                                                                        'Poppins',
                                                                        fontSize: 12*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.5*ffem/fem,
                                                                        color: Color(0xff000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                // autogroupy7vwFbs (GHxvftwm8dScUTha5qY7Vw)
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Container(
                                                                      // sb9w (4:99)
                                                                      margin: EdgeInsets.fromLTRB(0.69*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        'S',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // ugR (4:101)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.31*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '2',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // dcR (4:108)
                                                                      margin: EdgeInsets.fromLTRB(0.69*fem, 0*fem, 0*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '9',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // ZW5 (4:115)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.66*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '16',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // h6V (4:122)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.34*fem, 10.82*fem),
                                                                      child: Text(
                                                                        '23',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // ms3 (4:129)
                                                                      margin: EdgeInsets.fromLTRB(1.34*fem, 0*fem, 0*fem, 0*fem),
                                                                      child: Text(
                                                                        '30',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 11.3166103363*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupm4hktRs (GHxyfj7nNKQHk5VykQM4hK)
                                margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 134.29*fem, 0*fem),
                                width: double.infinity,
                                height: 278.4*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogrouplzcuc6y (GHy2PUvFqSdDW1rvExLzCu)
                                      padding: EdgeInsets.fromLTRB(0*fem, 19.27*fem, 67.54*fem, 19.27*fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogrouprkmfKn5 (GHxzDiCVLXeRacVGFLrKmf)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 71.38*fem, 30.87*fem),
                                            width: 128.62*fem,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // autogroupsmim3i5 (GHxzVNR4goJm8ECbodsMiM)
                                                  width: double.infinity,
                                                  height: 128.62*fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // capacityZgR (9:10)
                                                        left: 42*fem,
                                                        top: 46*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 47*fem,
                                                            height: 15*fem,
                                                            child: Text(
                                                              'Capacity',
                                                              style: SafeGoogleFont (
                                                                'Poppins',
                                                                fontSize: 10*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff898989),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // 35o (9:11)
                                                        left: 41*fem,
                                                        top: 64*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 49*fem,
                                                            height: 26*fem,
                                                            child: Text(
                                                              '72%',
                                                              style: SafeGoogleFont (
                                                                'Public Sans',
                                                                fontSize: 22*ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.175*ffem/fem,
                                                                color: Color(0xff1c1d23),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // ellipse235YHT (9:12)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 128.62*fem,
                                                            height: 128.62*fem,
                                                            child: Container(
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(64.3117675781*fem),
                                                                color: Color(0xfff2f2f2),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // ellipse237Evy (9:13)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 128.62*fem,
                                                            height: 128.62*fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/ellipse-237.png',
                                                              width: 128.62*fem,
                                                              height: 128.62*fem,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // ellipse238Lz1 (9:14)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 128.62*fem,
                                                            height: 128.62*fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/ellipse-238.png',
                                                              width: 128.62*fem,
                                                              height: 128.62*fem,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupx1rxfFb (GHy14Gdun4KQVJayTZX1RX)
                                                  padding: EdgeInsets.fromLTRB(9*fem, 19.38*fem, 5.51*fem, 0*fem),
                                                  width: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // autogroupe4cmzYm (GHxzeHKt3u8ocQM1are4cm)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                                        width: double.infinity,
                                                        height: 24*fem,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            Container(
                                                              // autogroupx1h7izZ (GHxzjhLXVj8BBEnibDx1H7)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.82*fem, 0*fem),
                                                              width: 38.29*fem,
                                                              height: double.infinity,
                                                              decoration: BoxDecoration (
                                                                color: Color(0xffa75bf4),
                                                                borderRadius: BorderRadius.circular(4*fem),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  '123',
                                                                  style: SafeGoogleFont (
                                                                    'Kanit',
                                                                    fontSize: 13*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.495*ffem/fem,
                                                                    color: Color(0xffffffff),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // allocatedaG5 (9:15)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                                                              child: Text(
                                                                'Allocated',
                                                                style: SafeGoogleFont (
                                                                  'Poppins',
                                                                  fontSize: 13*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.5*ffem/fem,
                                                                  color: Color(0xff1c1d23),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // autogroupsxmffoK (GHxzrh8sLGoX1vC88vsXmF)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                        width: double.infinity,
                                                        height: 24*fem,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // autogroupq5xsPUR (GHxzwcAM5M6o2Gxsc2q5Xs)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.82*fem, 0*fem),
                                                              width: 38.29*fem,
                                                              height: double.infinity,
                                                              decoration: BoxDecoration (
                                                                color: Color(0xfff7983e),
                                                                borderRadius: BorderRadius.circular(4*fem),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  '12',
                                                                  style: SafeGoogleFont (
                                                                    'Kanit',
                                                                    fontSize: 13*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.495*ffem/fem,
                                                                    color: Color(0xffffffff),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // availableeQM (9:16)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                                              child: Text(
                                                                'Available',
                                                                style: SafeGoogleFont (
                                                                  'Poppins',
                                                                  fontSize: 13*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.5*ffem/fem,
                                                                  color: Color(0xff1c1d23),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupq88mANh (GHy1X1NMsMoXwq2CoDq88m)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30.87*fem),
                                            width: 134.11*fem,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // autogrouppzgmHiD (GHy1j5ra1u1Wyh61f7pzgm)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.49*fem, 19.38*fem),
                                                  width: 128.62*fem,
                                                  height: 128.62*fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // complaintszsX (9:21)
                                                        left: 36*fem,
                                                        top: 46*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 59*fem,
                                                            height: 15*fem,
                                                            child: Text(
                                                              'Complaints',
                                                              style: SafeGoogleFont (
                                                                'Poppins',
                                                                fontSize: 10*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff898989),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // VZP (9:22)
                                                        left: 43*fem,
                                                        top: 64*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 51*fem,
                                                            height: 26*fem,
                                                            child: Text(
                                                              '85%',
                                                              style: SafeGoogleFont (
                                                                'Public Sans',
                                                                fontSize: 22*ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.175*ffem/fem,
                                                                color: Color(0xff1c1d23),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // ellipse239b6d (9:23)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 128.62*fem,
                                                            height: 128.62*fem,
                                                            child: Container(
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(64.3117675781*fem),
                                                                color: Color(0xfff2f2f2),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // ellipse240JWq (9:24)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 128.62*fem,
                                                            height: 128.62*fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/ellipse-240.png',
                                                              width: 128.62*fem,
                                                              height: 128.62*fem,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // ellipse241RrM (9:25)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 128.62*fem,
                                                            height: 128.62*fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/ellipse-241.png',
                                                              width: 128.62*fem,
                                                              height: 128.62*fem,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupjvkxwZo (GHy1rAV78uJYQnSF8NJvKX)
                                                  margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 13*fem),
                                                  width: double.infinity,
                                                  height: 24*fem,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        // autogroupuum3g1b (GHy1vfMcTgXQT5UrykUUM3)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.82*fem, 0*fem),
                                                        width: 38.29*fem,
                                                        height: double.infinity,
                                                        decoration: BoxDecoration (
                                                          color: Color(0xff03b659),
                                                          borderRadius: BorderRadius.circular(4*fem),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '123',
                                                            style: SafeGoogleFont (
                                                              'Kanit',
                                                              fontSize: 13*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.495*ffem/fem,
                                                              color: Color(0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // completed9Qy (9:26)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                                                        child: Text(
                                                          'Completed',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 13*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff1c1d23),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupypqusLy (GHy21k3Umg43eG9GHwYpQu)
                                                  margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 20*fem, 0*fem),
                                                  width: double.infinity,
                                                  height: 24*fem,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // autogroupumqwQ61 (GHy25ubCxcpBJuQaT9Umqw)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.82*fem, 0*fem),
                                                        width: 38.29*fem,
                                                        height: double.infinity,
                                                        decoration: BoxDecoration (
                                                          color: Color(0xfff84343),
                                                          borderRadius: BorderRadius.circular(4*fem),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '12',
                                                            style: SafeGoogleFont (
                                                              'Kanit',
                                                              fontSize: 13*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.495*ffem/fem,
                                                              color: Color(0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // pendingsVP (9:27)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                                        child: Text(
                                                          'Pending',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 13*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff1c1d23),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // groupz4D (4:4)
                                      width: 833.35*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // vectortvH (4:5)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 833.35*fem,
                                                height: 255.27*fem,
                                                child: Container(
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(24*fem),
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // groupDBs (4:6)
                                            left: 0.0008850098*fem,
                                            top: 20.2673950195*fem,
                                            child: Container(
                                              width: 833.35*fem,
                                              height: 240.14*fem,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // autogroupdozfXyF (GHy31YiVi91oQnAgyZDoZf)
                                                    margin: EdgeInsets.fromLTRB(32.1*fem, 0*fem, 11*fem, 29.14*fem),
                                                    width: double.infinity,
                                                    height: 35*fem,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // hostellerscheckindetailsrkd (4:44)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 327.24*fem, 2.12*fem),
                                                          child: Text(
                                                            'Hostellers Check IN  Details',
                                                            style: SafeGoogleFont (
                                                              'Poppins',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w700,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: 0.48*fem,
                                                              color: Color(0xff000000),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autolayouthorizontalxof (4:40)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22.34*fem, 0*fem),
                                                          padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 35.66*fem, 10*fem),
                                                          height: double.infinity,
                                                          decoration: BoxDecoration (
                                                            border: Border.all(color: Color(0xff515151)),
                                                            borderRadius: BorderRadius.circular(6*fem),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                // frameduo (4:41)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 1*fem),
                                                                width: 12*fem,
                                                                height: 7*fem,
                                                                child: Image.asset(
                                                                  'assets/page-1/images/frame-jhw.png',
                                                                  width: 12*fem,
                                                                  height: 7*fem,
                                                                ),
                                                              ),
                                                              Text(
                                                                // filter9dF (4:43)
                                                                'Filter',
                                                                style: SafeGoogleFont (
                                                                  'Inter',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.2125*ffem/fem,
                                                                  color: Color(0xff000000),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // autolayouthorizontalVSD (4:37)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                                          padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 10*fem, 8*fem),
                                                          height: 34*fem,
                                                          decoration: BoxDecoration (
                                                            color: Color(0xfffad85d),
                                                            borderRadius: BorderRadius.circular(6*fem),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                // vectorz85 (4:38)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                                width: 12*fem,
                                                                height: 13.5*fem,
                                                                child: Image.asset(
                                                                  'assets/page-1/images/vector.png',
                                                                  width: 12*fem,
                                                                  height: 13.5*fem,
                                                                ),
                                                              ),
                                                              Text(
                                                                // downloadJPf (4:39)
                                                                'Download',
                                                                style: SafeGoogleFont (
                                                                  'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.5*ffem/fem,
                                                                  color: Color(0xffffffff),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // autogroupavxhT1f (GHy3BHwFupzfq5mMzDaVxH)
                                                    width: double.infinity,
                                                    height: 176*fem,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          // groupznH (4:7)
                                                          left: 0*fem,
                                                          top: 29.8494919195*fem,
                                                          child: Container(
                                                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43.23*fem),
                                                            width: 833.35*fem,
                                                            height: 89.52*fem,
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Container(
                                                                  // lineu8Z (4:8)
                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.29*fem),
                                                                  width: 833.35*fem,
                                                                  height: 0*fem,
                                                                  child: Image.asset(
                                                                    'assets/page-1/images/line.png',
                                                                    width: 833.35*fem,
                                                                    height: 0*fem,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // lineDuw (4:10)
                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 42.23*fem),
                                                                  width: double.infinity,
                                                                  height: 1*fem,
                                                                  decoration: BoxDecoration (
                                                                    color: Color(0x7f3f3f3f),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          // autolayouthorizontalN29 (4:11)
                                                          left: 32.1027832031*fem,
                                                          top: 0*fem,
                                                          child: Container(
                                                            width: 769.14*fem,
                                                            height: 176*fem,
                                                            child: Row(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  // autolayoutverticalgYd (4:12)
                                                                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                                                                  height: double.infinity,
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text(
                                                                        // idCWy (4:13)
                                                                        'Id',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w600,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 26*fem,
                                                                      ),
                                                                      Text(
                                                                        // rz8308XJM (4:15)
                                                                        'RZ8308',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 26*fem,
                                                                      ),
                                                                      Text(
                                                                        // rz8308TC1 (4:343)
                                                                        'RZ8308',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 26*fem,
                                                                      ),
                                                                      Text(
                                                                        // rz8765zSq (4:16)
                                                                        'RZ8765',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // autogroupdyczw7B (GHy3NsSJMcWZJUADJrDycZ)
                                                                  padding: EdgeInsets.fromLTRB(114.03*fem, 0*fem, 114.03*fem, 0*fem),
                                                                  height: double.infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Container(
                                                                        // autolayoutverticalsFj (4:17)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 114.03*fem, 0*fem),
                                                                        child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              // hostellernamebhX (4:18)
                                                                              'Hosteller Name',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 26*fem,
                                                                            ),
                                                                            Text(
                                                                              // pranjalpetsKdX (4:19)
                                                                              'Pranjalpets',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 26*fem,
                                                                            ),
                                                                            Text(
                                                                              // adomcomFn5 (4:20)
                                                                              'Adom.com',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 26*fem,
                                                                            ),
                                                                            Text(
                                                                              // charlesteanGD (4:21)
                                                                              'Charles Tea',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        // autolayoutvertical8L5 (4:22)
                                                                        child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              // dategMb (4:23)
                                                                              'Date',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w600,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 26*fem,
                                                                            ),
                                                                            Text(
                                                                              // 1uf (4:24)
                                                                              '13/01/2022',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 26*fem,
                                                                            ),
                                                                            Text(
                                                                              // ZAV (4:25)
                                                                              '13/01/2022',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 26*fem,
                                                                            ),
                                                                            Text(
                                                                              // tyT (4:26)
                                                                              '13/01/2022',
                                                                              style: SafeGoogleFont (
                                                                                'Poppins',
                                                                                fontSize: 12*ffem,
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 1.5*ffem/fem,
                                                                                color: Color(0xff000000),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // autolayoutverticalTFs (4:27)
                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 114.03*fem, 0*fem),
                                                                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                                                                  height: double.infinity,
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text(
                                                                        // timexyK (4:28)
                                                                        'Time',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w600,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 26*fem,
                                                                      ),
                                                                      Text(
                                                                        // amuNm (4:30)
                                                                        '8.30 AM',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 26*fem,
                                                                      ),
                                                                      Text(
                                                                        // pmEfw (4:344)
                                                                        '9.45 PM',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 26*fem,
                                                                      ),
                                                                      Text(
                                                                        // pmZy7 (4:31)
                                                                        '12.30 PM',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // autolayoutvertical7zd (4:32)
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text(
                                                                        // statusg29 (4:33)
                                                                        'Status',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w600,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xff000000),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 27*fem,
                                                                      ),
                                                                      Text(
                                                                        // checkinocZ (4:34)
                                                                        'Check In',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xffc49d50),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 27*fem,
                                                                      ),
                                                                      Text(
                                                                        // checkoutYKF (4:35)
                                                                        'Check Out',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xfff84343),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 27*fem,
                                                                      ),
                                                                      Text(
                                                                        // checkinfuf (4:36)
                                                                        'Check In',
                                                                        style: SafeGoogleFont (
                                                                          'Poppins',
                                                                          fontSize: 12*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.5*ffem/fem,
                                                                          color: Color(0xffc49d50),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

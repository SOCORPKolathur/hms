import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:hms/secpage.dart';

import 'Dashboard_Screen/DashBoard_Screen.dart';


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
                  DashBoard_Scren()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

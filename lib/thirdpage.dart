import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:hms/firstpage.dart';
import 'package:hms/utils.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
            // hostellist8oX (9:512)
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogrouptupkDpy (GHySCP5fXGKmEefWYpTuPK)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                  padding: EdgeInsets.fromLTRB(15*fem, 34.92*fem, 0*fem, 356*fem),
                  height: 960*fem,
                  decoration: BoxDecoration (
                    color: Color(0xff161717),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // framehk9 (9:545)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.92*fem, 57.93*fem),
                        width: 39.08*fem,
                        height: 39.16*fem,
                        child: Image.asset(
                          'assets/page-1/images/frame-b33.png',
                          width: 39.08*fem,
                          height: 39.16*fem,
                        ),
                      ),
                      GestureDetector(
                          onTap:(){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>FirstPage())
                          );
                        },
                        child: Container(
                          // autogrouptdq1c6R (GHySLo1KBcTiAM8xnmtDQ1)
                          width: 85*fem,
                          height: 472*fem,
                          child: Image.asset(
                            'assets/page-1/images/auto-group-tdq1.png',
                            width: 85*fem,
                            height: 472*fem,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupzatm8Kf (GHySiNDhgToWqGxxthZatm)
                  width: 1433*fem,
                  height: 1149*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // navbarfKb (9:548)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 86*fem, 22*fem),
                        padding: EdgeInsets.fromLTRB(32*fem, 32*fem, 32*fem, 32*fem),
                        width: double.infinity,
                        height: 110*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xfff0f1f2)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.only (
                            topRight: Radius.circular(6*fem),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // teamsevenjqF (I9:548;64:7170)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 580*fem, 0*fem),
                              child: Text(
                                'Complaint Lists',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 28*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4285714286*ffem/fem,
                                  letterSpacing: -0.28*fem,
                                  color: Color(0xff2d3036),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupfg1sDkR (GHycJLkJsWPAH3iG5fFg1s)
                              padding: EdgeInsets.fromLTRB(153*fem, 0*fem, 0*fem, 0*fem),
                              width: 500*fem,
                              height: double.infinity,
                              child: Container(
                                // searchkEZ (I9:548;64:7171)
                                padding: EdgeInsets.fromLTRB(18*fem, 10*fem, 238*fem, 10*fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xfff0f1f2)),
                                  color: Color(0xfff4f6f8),
                                  borderRadius: BorderRadius.circular(6*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // iconsaxlinearsearchnormal1eqj (I9:548;64:7172)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                                      width: 20*fem,
                                      height: 20*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/iconsax-linear-searchnormal1-jqo.png',
                                        width: 20*fem,
                                        height: 20*fem,
                                      ),
                                    ),
                                    Text(
                                      // searchMVF (I9:548;64:7174)
                                      'Search',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.625*ffem/fem,
                                        color: Color(0xff898e99),
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
                        // autogroupjhtb6Bw (GHySrXemVS6QyjbwN2JhTb)
                        margin: EdgeInsets.fromLTRB(61*fem, 0*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        height: 1017*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // todoDGZ (9:721)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                              width: 356*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // titlejEu (9:722)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                                    padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 19*fem, 16*fem),
                                    width: double.infinity,
                                    height: 68*fem,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xfff0f1f2)),
                                      color: Color(0xffff5b5b),
                                      borderRadius: BorderRadius.circular(6*fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame149pXF (9:723)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 196*fem, 0*fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // todoMn5 (9:724)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                                child: Text(
                                                  'To do',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: -0.2*fem,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame1154wP (9:725)
                                                width: 38*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xffffffff)),
                                                  borderRadius: BorderRadius.circular(6*fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '3',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.7142857143*ffem/fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // iconsaxlinearmoremL1 (9:727)
                                          width: 18*fem,
                                          height: 4*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/iconsax-linear-more-Zrd.png',
                                            width: 18*fem,
                                            height: 4*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // taskVG1 (9:729)
                                    width: double.infinity,
                                    height: 749*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // cardbody1qqf (I9:730;64:7112)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 0*fem),
                                            width: 356*fem,
                                            height: 519*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xfff0f1f2)),
                                              color: Color(0xffffffff),
                                              borderRadius: BorderRadius.only (
                                                topLeft: Radius.circular(6*fem),
                                                topRight: Radius.circular(6*fem),
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // headerJUM (I9:730;64:7113)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 16*fem),
                                                  width: 339*fem,
                                                  height: 90*fem,
                                                  child: Container(
                                                    // heroe2R (I9:730;64:7120)
                                                    width: 299*fem,
                                                    height: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // tasktitlePVo (I9:730;64:7121)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                          child: Text(
                                                            'Create Shot Dribbble',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 20*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: -0.2*fem,
                                                              color: Color(0xff2d3036),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // descriptionoftheassociatedtask (I9:730;64:7122)
                                                          constraints: BoxConstraints (
                                                            maxWidth: 299*fem,
                                                          ),
                                                          child: Text(
                                                            'Make dribbble shots for studio portfolio needs and your own portfolio.',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupkgvzBRf (GHyYQTEhH1uqBQ7SS2KGvZ)
                                                  width: double.infinity,
                                                  height: 397*fem,
                                                  child: Container(
                                                    // cardbody2LZT (I9:730;64:7124)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 305*fem),
                                                    padding: EdgeInsets.fromLTRB(228*fem, 18*fem, 16*fem, 18*fem),
                                                    width: double.infinity,
                                                    height: 92*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: Color(0xfff0f1f2)),
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.only (
                                                        bottomRight: Radius.circular(6*fem),
                                                        bottomLeft: Radius.circular(6*fem),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      // deadlineQ3X (I9:730;64:7136)
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        children: [
                                                          Container(
                                                            // deadlinewp9 (I9:730;64:7136;64:7138)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                            child: Text(
                                                              'Date & Time',
                                                              textAlign: TextAlign.right,
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.7142857143*ffem/fem,
                                                                color: Color(0xff616874),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // dateTGh (I9:730;64:7136;64:7139)
                                                            width: double.infinity,
                                                            height: 26*fem,
                                                            child: Row(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Text(
                                                                  // mayc9b (I9:730;64:7136;64:7140)
                                                                  '24 Jun',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 16*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.625*ffem/fem,
                                                                    color: Color(0xff2d3036),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // autogrouppvyrkFo (GHyYhcQmjYeTQSqec7PVYR)
                                                                  padding: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                                                  height: double.infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // ellipse8USh (I9:730;64:7136;64:7141)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                                        width: 4*fem,
                                                                        height: 4*fem,
                                                                        decoration: BoxDecoration (
                                                                          borderRadius: BorderRadius.circular(2*fem),
                                                                          color: Color(0xff2d3036),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        // Q5T (I9:730;64:7136;64:7142)
                                                                        '16:00',
                                                                        style: SafeGoogleFont (
                                                                          'Inter',
                                                                          fontSize: 16*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.625*ffem/fem,
                                                                          color: Color(0xff2d3036),
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // cardbody1LE1 (I9:731;64:7112)
                                          left: 0*fem,
                                          top: 230*fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 0*fem),
                                            width: 356*fem,
                                            height: 519*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xfff0f1f2)),
                                              color: Color(0xffffffff),
                                              borderRadius: BorderRadius.only (
                                                topLeft: Radius.circular(6*fem),
                                                topRight: Radius.circular(6*fem),
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // headerC1K (I9:731;64:7113)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 16*fem),
                                                  width: 339*fem,
                                                  height: 90*fem,
                                                  child: Container(
                                                    // hero8ff (I9:731;64:7120)
                                                    width: 321*fem,
                                                    height: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // tasktitlesdF (I9:731;64:7121)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                          child: Text(
                                                            'Landing Page Roblox',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 20*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.5*ffem/fem,
                                                              letterSpacing: -0.2*fem,
                                                              color: Color(0xff2d3036),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // descriptionoftheassociatedtask (I9:731;64:7122)
                                                          constraints: BoxConstraints (
                                                            maxWidth: 321*fem,
                                                          ),
                                                          child: Text(
                                                            'Slicing to the website from the design that has been made by the UI designer.',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupmwrqgKo (GHyZK6Ped2jGAKXdsuMWrq)
                                                  width: double.infinity,
                                                  height: 397*fem,
                                                  child: Container(
                                                    // cardbody2Es7 (I9:731;64:7124)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 305*fem),
                                                    padding: EdgeInsets.fromLTRB(234*fem, 18*fem, 16*fem, 18*fem),
                                                    width: double.infinity,
                                                    height: 92*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: Color(0xfff0f1f2)),
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.only (
                                                        bottomRight: Radius.circular(6*fem),
                                                        bottomLeft: Radius.circular(6*fem),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      // deadlineY77 (I9:731;64:7136)
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        children: [
                                                          Container(
                                                            // deadlinegz1 (I9:731;64:7136;64:7138)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                            child: Text(
                                                              'Date & Time',
                                                              textAlign: TextAlign.right,
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.7142857143*ffem/fem,
                                                                color: Color(0xff616874),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // datezzh (I9:731;64:7136;64:7139)
                                                            width: double.infinity,
                                                            height: 26*fem,
                                                            child: Row(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Text(
                                                                  // may9ch (I9:731;64:7136;64:7140)
                                                                  '28 Jul',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 16*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.625*ffem/fem,
                                                                    color: Color(0xff2d3036),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // autogroupvx1f6Xw (GHyZdfh2uMvVUPKtkEvX1F)
                                                                  padding: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                                                  height: double.infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Container(
                                                                        // ellipse8S61 (I9:731;64:7136;64:7141)
                                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                                        width: 4*fem,
                                                                        height: 4*fem,
                                                                        decoration: BoxDecoration (
                                                                          borderRadius: BorderRadius.circular(2*fem),
                                                                          color: Color(0xff2d3036),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        // ksP (I9:731;64:7136;64:7142)
                                                                        '16:00',
                                                                        style: SafeGoogleFont (
                                                                          'Inter',
                                                                          fontSize: 16*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.625*ffem/fem,
                                                                          color: Color(0xff2d3036),
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
                            Container(
                              // autogroupsq41Vpy (GHySy2TwdE5fFwLPNTsq41)
                              width: 958*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // doingeSy (9:733)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      width: 545*fem,
                                      height: 1017*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(6*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titlem1o (9:734)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 24*fem),
                                            padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 19*fem, 16*fem),
                                            width: double.infinity,
                                            height: 68*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xfff0f1f2)),
                                              color: Color(0xfffad85d),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // frame149f7B (9:735)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                                                  height: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // onprocessbmX (9:736)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                                        child: Text(
                                                          'On Process',
                                                          style: SafeGoogleFont (
                                                            'Inter',
                                                            fontSize: 20*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            letterSpacing: -0.2*fem,
                                                            color: Color(0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // frame115UKX (9:737)
                                                        width: 38*fem,
                                                        height: double.infinity,
                                                        decoration: BoxDecoration (
                                                          border: Border.all(color: Color(0xffffffff)),
                                                          borderRadius: BorderRadius.circular(6*fem),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '3',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.7142857143*ffem/fem,
                                                              color: Color(0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // iconsaxlinearmore7dP (9:739)
                                                  width: 18*fem,
                                                  height: 4*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/iconsax-linear-more.png',
                                                    width: 18*fem,
                                                    height: 4*fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // taskQMb (9:741)
                                            width: double.infinity,
                                            height: 925*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // cardbody1idB (I9:742;64:7112)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                                                    width: 545*fem,
                                                    height: 519*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: Color(0xfff0f1f2)),
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.only (
                                                        topLeft: Radius.circular(6*fem),
                                                        topRight: Radius.circular(6*fem),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      // autogroupsqcryZ7 (GHyTHbmKuZGta18eEoSqCR)
                                                      width: double.infinity,
                                                      height: 144*fem,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            // headerXad (I9:742;64:7113)
                                                            left: 16*fem,
                                                            top: 0*fem,
                                                            child: Container(
                                                              width: 529*fem,
                                                              height: 77*fem,
                                                              child: Container(
                                                                // herorcu (I9:742;64:7120)
                                                                width: double.infinity,
                                                                height: double.infinity,
                                                                child: Text(
                                                                  'Dahsboard Google',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 20*ffem,
                                                                    fontWeight: FontWeight.w600,
                                                                    height: 1.5*ffem/fem,
                                                                    letterSpacing: -0.2*fem,
                                                                    color: Color(0xff2d3036),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            // cardbody2kyB (I9:742;64:7124)
                                                            left: 0*fem,
                                                            top: 46*fem,
                                                            child: Container(
                                                              padding: EdgeInsets.fromLTRB(16*fem, 18*fem, 16*fem, 18*fem),
                                                              width: 356*fem,
                                                              height: 98*fem,
                                                              decoration: BoxDecoration (
                                                                border: Border.all(color: Color(0xfff0f1f2)),
                                                                color: Color(0xffffffff),
                                                                borderRadius: BorderRadius.only (
                                                                  bottomRight: Radius.circular(6*fem),
                                                                  bottomLeft: Radius.circular(6*fem),
                                                                ),
                                                              ),
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    // assignpy3 (I9:742;64:7125)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 104*fem, 0*fem),
                                                                    width: 104*fem,
                                                                    height: double.infinity,
                                                                  ),
                                                                  Container(
                                                                    // doingAn1 (I9:742;64:7136)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                                    width: 116*fem,
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                      children: [
                                                                        Container(
                                                                          // doingsinceti1 (I9:742;64:7136;64:7144)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                                          child: Text(
                                                                            'Date & Time',
                                                                            textAlign: TextAlign.right,
                                                                            style: SafeGoogleFont (
                                                                              'Inter',
                                                                              fontSize: 14*ffem,
                                                                              fontWeight: FontWeight.w500,
                                                                              height: 1.7142857143*ffem/fem,
                                                                              color: Color(0xff616874),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // dateDEV (I9:742;64:7136;64:7145)
                                                                          width: double.infinity,
                                                                          height: 26*fem,
                                                                          child: Row(
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                // mayM5o (I9:742;64:7136;64:7146)
                                                                                '25 May',
                                                                                style: SafeGoogleFont (
                                                                                  'Inter',
                                                                                  fontSize: 16*ffem,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  height: 1.625*ffem/fem,
                                                                                  color: Color(0xff2d3036),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                // autogroupsfmoHVF (GHyUXyrPWKu7AmafUdsfMo)
                                                                                padding: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                                                                height: double.infinity,
                                                                                child: Row(
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Container(
                                                                                      // ellipse81w3 (I9:742;64:7136;64:7147)
                                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                                                      width: 4*fem,
                                                                                      height: 4*fem,
                                                                                      decoration: BoxDecoration (
                                                                                        borderRadius: BorderRadius.circular(2*fem),
                                                                                        color: Color(0xff2d3036),
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      // wJu (I9:742;64:7136;64:7148)
                                                                                      '16:00',
                                                                                      style: SafeGoogleFont (
                                                                                        'Inter',
                                                                                        fontSize: 16*ffem,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        height: 1.625*ffem/fem,
                                                                                        color: Color(0xff2d3036),
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
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // cardbody1siM (I9:743;64:7112)
                                                  left: 0*fem,
                                                  top: 176*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 0*fem),
                                                    width: 356*fem,
                                                    height: 519*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: Color(0xfff0f1f2)),
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.only (
                                                        topLeft: Radius.circular(6*fem),
                                                        topRight: Radius.circular(6*fem),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          // headerZ5P (I9:743;64:7113)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 16*fem),
                                                          width: 339*fem,
                                                          height: 90*fem,
                                                          child: Container(
                                                            // hero6LD (I9:743;64:7120)
                                                            width: 287*fem,
                                                            height: double.infinity,
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  // tasktitleExD (I9:743;64:7121)
                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                                  child: Text(
                                                                    'Slicing Landing Page',
                                                                    style: SafeGoogleFont (
                                                                      'Inter',
                                                                      fontSize: 20*ffem,
                                                                      fontWeight: FontWeight.w600,
                                                                      height: 1.5*ffem/fem,
                                                                      letterSpacing: -0.2*fem,
                                                                      color: Color(0xff2d3036),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // descriptionoftheassociatedtask (I9:743;64:7122)
                                                                  constraints: BoxConstraints (
                                                                    maxWidth: 287*fem,
                                                                  ),
                                                                  child: Text(
                                                                    'Nice and clean landing page, and also good for children.',
                                                                    style: SafeGoogleFont (
                                                                      'Inter',
                                                                      fontSize: 16*ffem,
                                                                      fontWeight: FontWeight.w400,
                                                                      height: 1.625*ffem/fem,
                                                                      color: Color(0xff616874),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupn549SHb (GHyVAo8Nw9pqRFPsX8n549)
                                                          width: double.infinity,
                                                          height: 397*fem,
                                                          child: Container(
                                                            // cardbody2o89 (I9:743;64:7124)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 305*fem),
                                                            padding: EdgeInsets.fromLTRB(234*fem, 18*fem, 16*fem, 18*fem),
                                                            width: double.infinity,
                                                            height: 92*fem,
                                                            decoration: BoxDecoration (
                                                              border: Border.all(color: Color(0xfff0f1f2)),
                                                              color: Color(0xffffffff),
                                                              borderRadius: BorderRadius.only (
                                                                bottomRight: Radius.circular(6*fem),
                                                                bottomLeft: Radius.circular(6*fem),
                                                              ),
                                                            ),
                                                            child: Container(
                                                              // doing5rM (I9:743;64:7136)
                                                              width: double.infinity,
                                                              height: double.infinity,
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                children: [
                                                                  Container(
                                                                    // doingsincedss (I9:743;64:7136;64:7144)
                                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                                    child: Text(
                                                                      'Date & Time',
                                                                      textAlign: TextAlign.right,
                                                                      style: SafeGoogleFont (
                                                                        'Inter',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w500,
                                                                        height: 1.7142857143*ffem/fem,
                                                                        color: Color(0xff616874),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // dateA77 (I9:743;64:7136;64:7145)
                                                                    width: double.infinity,
                                                                    height: 26*fem,
                                                                    child: Row(
                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [
                                                                        Text(
                                                                          // mayJz1 (I9:743;64:7136;64:7146)
                                                                          '28 Jul',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 16*ffem,
                                                                            fontWeight: FontWeight.w500,
                                                                            height: 1.625*ffem/fem,
                                                                            color: Color(0xff2d3036),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          // autogroupm5imFeM (GHyVUY7pNtsEoBjsA2m5iM)
                                                                          padding: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                                                          height: double.infinity,
                                                                          child: Row(
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            children: [
                                                                              Container(
                                                                                // ellipse8PVf (I9:743;64:7136;64:7147)
                                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                                                width: 4*fem,
                                                                                height: 4*fem,
                                                                                decoration: BoxDecoration (
                                                                                  borderRadius: BorderRadius.circular(2*fem),
                                                                                  color: Color(0xff2d3036),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                // KeD (I9:743;64:7136;64:7148)
                                                                                '16:00',
                                                                                style: SafeGoogleFont (
                                                                                  'Inter',
                                                                                  fontSize: 16*ffem,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  height: 1.625*ffem/fem,
                                                                                  color: Color(0xff2d3036),
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // cardbody1fTB (I9:744;64:7112)
                                                  left: 0*fem,
                                                  top: 406*fem,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                                                    width: 534*fem,
                                                    height: 519*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: Color(0xfff0f1f2)),
                                                      color: Color(0xffffffff),
                                                      borderRadius: BorderRadius.only (
                                                        topLeft: Radius.circular(6*fem),
                                                        topRight: Radius.circular(6*fem),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      // autogroupni93wfb (GHyW5X7XZdFwzakttZNi93)
                                                      width: double.infinity,
                                                      height: 138*fem,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            // headertaq (I9:744;64:7113)
                                                            left: 16*fem,
                                                            top: 0*fem,
                                                            child: Container(
                                                              width: 518*fem,
                                                              height: 77*fem,
                                                              child: Container(
                                                                // heropUV (I9:744;64:7120)
                                                                width: double.infinity,
                                                                height: double.infinity,
                                                                child: Text(
                                                                  'Landing Page and Dashboard',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 20*ffem,
                                                                    fontWeight: FontWeight.w600,
                                                                    height: 1.5*ffem/fem,
                                                                    letterSpacing: -0.2*fem,
                                                                    color: Color(0xff2d3036),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            // cardbody28EH (I9:744;64:7124)
                                                            left: 0*fem,
                                                            top: 46*fem,
                                                            child: Container(
                                                              padding: EdgeInsets.fromLTRB(224*fem, 18*fem, 16*fem, 18*fem),
                                                              width: 356*fem,
                                                              height: 92*fem,
                                                              decoration: BoxDecoration (
                                                                border: Border.all(color: Color(0xfff0f1f2)),
                                                                color: Color(0xffffffff),
                                                                borderRadius: BorderRadius.only (
                                                                  bottomRight: Radius.circular(6*fem),
                                                                  bottomLeft: Radius.circular(6*fem),
                                                                ),
                                                              ),
                                                              child: Container(
                                                                // doing1Yy (I9:744;64:7136)
                                                                width: double.infinity,
                                                                height: double.infinity,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                  children: [
                                                                    Container(
                                                                      // doingsincexz1 (I9:744;64:7136;64:7144)
                                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                                      child: Text(
                                                                        'Date & Time',
                                                                        textAlign: TextAlign.right,
                                                                        style: SafeGoogleFont (
                                                                          'Inter',
                                                                          fontSize: 14*ffem,
                                                                          fontWeight: FontWeight.w500,
                                                                          height: 1.7142857143*ffem/fem,
                                                                          color: Color(0xff616874),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // dateGzh (I9:744;64:7136;64:7145)
                                                                      width: double.infinity,
                                                                      height: 26*fem,
                                                                      child: Row(
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            // may2U5 (I9:744;64:7136;64:7146)
                                                                            '24 May',
                                                                            style: SafeGoogleFont (
                                                                              'Inter',
                                                                              fontSize: 16*ffem,
                                                                              fontWeight: FontWeight.w500,
                                                                              height: 1.625*ffem/fem,
                                                                              color: Color(0xff2d3036),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            // autogrouptq7bAaH (GHyWXqh1EdffV3TzcVtq7B)
                                                                            padding: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                                                            height: double.infinity,
                                                                            child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Container(
                                                                                  // ellipse8Huo (I9:744;64:7136;64:7147)
                                                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                                                  width: 4*fem,
                                                                                  height: 4*fem,
                                                                                  decoration: BoxDecoration (
                                                                                    borderRadius: BorderRadius.circular(2*fem),
                                                                                    color: Color(0xff2d3036),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  // RFK (I9:744;64:7136;64:7148)
                                                                                  '16:00',
                                                                                  style: SafeGoogleFont (
                                                                                    'Inter',
                                                                                    fontSize: 16*ffem,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    height: 1.625*ffem/fem,
                                                                                    color: Color(0xff2d3036),
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
                                                        ],
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
                                    // inreviewMuf (9:745)
                                    left: 413*fem,
                                    top: 0*fem,
                                    child: Container(
                                      width: 545*fem,
                                      height: 611*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(6*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // titlefQZ (9:746)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 24*fem),
                                            padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 19*fem, 16*fem),
                                            width: double.infinity,
                                            height: 68*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xfff0f1f2)),
                                              color: Color(0xff73b06f),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // frame149AMK (9:747)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 132*fem, 0*fem),
                                                  height: double.infinity,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // compledtedgqT (9:748)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                                        child: Text(
                                                          'Compledted',
                                                          style: SafeGoogleFont (
                                                            'Inter',
                                                            fontSize: 20*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            letterSpacing: -0.2*fem,
                                                            color: Color(0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // frame115Coo (9:749)
                                                        width: 37*fem,
                                                        height: double.infinity,
                                                        decoration: BoxDecoration (
                                                          border: Border.all(color: Color(0xffffffff)),
                                                          borderRadius: BorderRadius.circular(6*fem),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '2',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.7142857143*ffem/fem,
                                                              color: Color(0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // iconsaxlinearmoreW3o (9:751)
                                                  width: 18*fem,
                                                  height: 4*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/iconsax-linear-more-Zed.png',
                                                    width: 18*fem,
                                                    height: 4*fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // cardbody1qbs (I9:754;64:7112)
                                            padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                                            width: double.infinity,
                                            height: 519*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xfff0f1f2)),
                                              color: Color(0xffffffff),
                                              borderRadius: BorderRadius.only (
                                                topLeft: Radius.circular(6*fem),
                                                topRight: Radius.circular(6*fem),
                                              ),
                                            ),
                                            child: Container(
                                              // autogroupqzxo9sT (GHyXEzB7RKatazSAfHqzXo)
                                              width: double.infinity,
                                              height: 138*fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // headerK1F (I9:754;64:7113)
                                                    left: 16*fem,
                                                    top: 0*fem,
                                                    child: Container(
                                                      width: 529*fem,
                                                      height: 77*fem,
                                                      child: Container(
                                                        // hero3hw (I9:754;64:7120)
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        child: Text(
                                                          'Dashboard Minecraft',
                                                          style: SafeGoogleFont (
                                                            'Inter',
                                                            fontSize: 20*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            letterSpacing: -0.2*fem,
                                                            color: Color(0xff2d3036),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // cardbody2vmj (I9:754;64:7124)
                                                    left: 0*fem,
                                                    top: 46*fem,
                                                    child: Container(
                                                      padding: EdgeInsets.fromLTRB(224*fem, 18*fem, 16*fem, 18*fem),
                                                      width: 356*fem,
                                                      height: 92*fem,
                                                      decoration: BoxDecoration (
                                                        border: Border.all(color: Color(0xfff0f1f2)),
                                                        color: Color(0xffffffff),
                                                        borderRadius: BorderRadius.only (
                                                          bottomRight: Radius.circular(6*fem),
                                                          bottomLeft: Radius.circular(6*fem),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        // review1YH (I9:754;64:7136)
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            Container(
                                                              // reviewsinceN7w (I9:754;64:7136;64:7150)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                              child: Text(
                                                                'Date & Time',
                                                                textAlign: TextAlign.right,
                                                                style: SafeGoogleFont (
                                                                  'Inter',
                                                                  fontSize: 14*ffem,
                                                                  fontWeight: FontWeight.w500,
                                                                  height: 1.7142857143*ffem/fem,
                                                                  color: Color(0xff616874),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // dateg8d (I9:754;64:7136;64:7151)
                                                              width: double.infinity,
                                                              height: 26*fem,
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Text(
                                                                    // maydJm (I9:754;64:7136;64:7152)
                                                                    '25 May',
                                                                    style: SafeGoogleFont (
                                                                      'Inter',
                                                                      fontSize: 16*ffem,
                                                                      fontWeight: FontWeight.w500,
                                                                      height: 1.625*ffem/fem,
                                                                      color: Color(0xff2d3036),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // autogroupyxrfZy7 (GHyXg97s7uP3mfuhTcYXRF)
                                                                    padding: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                                                    height: double.infinity,
                                                                    child: Row(
                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [
                                                                        Container(
                                                                          // ellipse8JQu (I9:754;64:7136;64:7153)
                                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                                          width: 4*fem,
                                                                          height: 4*fem,
                                                                          decoration: BoxDecoration (
                                                                            borderRadius: BorderRadius.circular(2*fem),
                                                                            color: Color(0xff2d3036),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          // E3f (I9:754;64:7136;64:7154)
                                                                          '16:00',
                                                                          style: SafeGoogleFont (
                                                                            'Inter',
                                                                            fontSize: 16*ffem,
                                                                            fontWeight: FontWeight.w500,
                                                                            height: 1.625*ffem/fem,
                                                                            color: Color(0xff2d3036),
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
                                                ],
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
    );
  }
}

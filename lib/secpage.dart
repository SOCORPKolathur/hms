import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:hms/thirdpage.dart';
import 'package:hms/utils.dart';


class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
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
            // hostellistXbs (9:32)
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
                  // autogroupaykhbbj (GHyJcgYeUpb65DXg7Saykh)
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
                        // framefrV (9:334)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.92*fem, 57.93*fem),
                        width: 39.08*fem,
                        height: 39.16*fem,
                        child: Image.asset(
                          'assets/page-1/images/frame-D25.png',
                          width: 39.08*fem,
                          height: 39.16*fem,
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>ThirdPage())
                          );
                        },
                        child: Container(
                          // autogroup864dBK3 (GHyJmG8gi5xQBjtnCV864d)
                          width: 85*fem,
                          height: 472*fem,
                          child: Image.asset(
                            'assets/page-1/images/auto-group-864d.png',
                            width: 85*fem,
                            height: 472*fem,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroup9rt76gu (GHyK9LLEugzJR9Pjqg9rT7)
                  width: 1347*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // navbar3MF (9:395)
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
                              // teamsevenjUy (I9:395;64:7170)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 200*fem, 0*fem),
                              child: Text(
                                'Hostel List',
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
                              // searchpFX (I9:395;64:7171)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 199*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(18*fem, 10*fem, 238*fem, 10*fem),
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
                                    // iconsaxlinearsearchnormal17Ed (I9:395;64:7172)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                                    width: 20*fem,
                                    height: 20*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/iconsax-linear-searchnormal1.png',
                                      width: 20*fem,
                                      height: 20*fem,
                                    ),
                                  ),
                                  Text(
                                    // searchchB (I9:395;64:7174)
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
                            Container(
                              // invitemembersk2h (I9:395;64:7175)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // memberstPo (I9:395;64:7176)
                                    margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 32*fem, 7*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // userscqb (I9:395;64:7177)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                          width: 104*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // frame125YUM (I9:395;64:7178)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1*fem, 1*fem),
                                                  width: 32*fem,
                                                  height: 32*fem,
                                                  decoration: BoxDecoration (
                                                    border: Border.all(color: Color(0xffffffff)),
                                                    color: Color(0xff73b06f),
                                                    borderRadius: BorderRadius.circular(6*fem),
                                                  ),
                                                  child: Center(
                                                    // ellipse4SZj (I9:395;64:7179)
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: 30*fem,
                                                      child: Container(
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(15*fem),
                                                          image: DecorationImage (
                                                            fit: BoxFit.cover,
                                                            image: AssetImage (
                                                              'assets/page-1/images/ellipse-4-bg.png',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // frame126wmP (I9:395;64:7180)
                                                left: 24*fem,
                                                top: 0*fem,
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1*fem, 1*fem),
                                                  width: 32*fem,
                                                  height: 32*fem,
                                                  decoration: BoxDecoration (
                                                    border: Border.all(color: Color(0xffffffff)),
                                                    color: Color(0xffffb829),
                                                    borderRadius: BorderRadius.circular(6*fem),
                                                  ),
                                                  child: Center(
                                                    // ellipse2r7f (I9:395;64:7181)
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: 30*fem,
                                                      child: Container(
                                                        decoration: BoxDecoration (
                                                          borderRadius: BorderRadius.circular(15*fem),
                                                          image: DecorationImage (
                                                            fit: BoxFit.cover,
                                                            image: AssetImage (
                                                              'assets/page-1/images/ellipse-2-bg.png',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // frame127yTB (I9:395;64:7182)
                                                left: 48*fem,
                                                top: 0*fem,
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(2*fem, 2*fem, 2*fem, 2*fem),
                                                  width: 32*fem,
                                                  height: 32*fem,
                                                  decoration: BoxDecoration (
                                                    border: Border.all(color: Color(0xffffffff)),
                                                    color: Color(0xffedd75a),
                                                    borderRadius: BorderRadius.circular(6*fem),
                                                  ),
                                                  child: Center(
                                                    // frame158UPw (I9:395;64:7183)
                                                    child: SizedBox(
                                                      width: 28*fem,
                                                      height: 28*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/frame-158.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // frame128DcR (I9:395;64:7184)
                                                left: 72*fem,
                                                top: 0*fem,
                                                child: Container(
                                                  width: 32*fem,
                                                  height: 32*fem,
                                                  decoration: BoxDecoration (
                                                    border: Border.all(color: Color(0xffffffff)),
                                                    color: Color(0xffffb829),
                                                    borderRadius: BorderRadius.circular(6*fem),
                                                  ),
                                                  child: Center(
                                                    child: Center(
                                                      child: Text(
                                                        '+11',
                                                        textAlign: TextAlign.center,
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 14*ffem,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.7142857143*ffem/fem,
                                                          color: Color(0xff2d3036),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          // memberssBB (I9:395;64:7186)
                                          child: Text(
                                            '14 Hostel Members',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.625*ffem/fem,
                                              color: Color(0xff2d3036),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // invitebuttonCDT (I9:395;64:7187)
                                    width: 98*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xff161717),
                                      borderRadius: BorderRadius.circular(6*fem),
                                    ),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          'Add Type',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.625*ffem/fem,
                                            color: Color(0xffffffff),
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
                      Container(
                        // autogroup5nwf5Y9 (GHyKGL8akEfeFpo9PP5NwF)
                        padding: EdgeInsets.fromLTRB(50*fem, 47*fem, 50*fem, 0*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame4oyw (9:501)
                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 35*fem),
                              height: 50*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame2w4Z (9:502)
                                    width: 129*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xffffffff)),
                                      color: Color(0xff7f69dc),
                                      borderRadius: BorderRadius.circular(6*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Hostellers',
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
                                  ),
                                  SizedBox(
                                    width: 16*fem,
                                  ),
                                  Container(
                                    // frame3Px9 (9:504)
                                    width: 155*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xff7f69dc)),
                                      borderRadius: BorderRadius.circular(6*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Hostel Staffs',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: -0.2*fem,
                                          color: Color(0xff7f69dc),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16*fem,
                                  ),
                                  Container(
                                    // frame4Th7 (9:506)
                                    width: 250*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xff7f69dc)),
                                      borderRadius: BorderRadius.circular(6*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Hostel Mess Managers',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: -0.2*fem,
                                          color: Color(0xff7f69dc),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16*fem,
                                  ),
                                  Container(
                                    // frame5j8q (9:508)
                                    width: 157*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xff7f69dc)),
                                      borderRadius: BorderRadius.circular(6*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Departments',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          letterSpacing: -0.2*fem,
                                          color: Color(0xff7f69dc),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame229dV7 (9:423)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // imagecolumnAV3 (9:424)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                                    padding: EdgeInsets.fromLTRB(9*fem, 0*fem, 9*fem, 9*fem),
                                    width: 50*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // rectangle7fAu (9:426)
                                          margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 13*fem, 39*fem),
                                          width: double.infinity,
                                          height: 6*fem,
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(6*fem),
                                            color: Color(0xff2d3036),
                                          ),
                                        ),
                                        Container(
                                          // frame227nFX (9:427)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                                          width: double.infinity,
                                          height: 32*fem,
                                          child: Container(
                                            // frame127ius (9:428)
                                            padding: EdgeInsets.fromLTRB(2*fem, 2*fem, 2*fem, 2*fem),
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xffedd75a),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Center(
                                              // frame158eYd (9:429)
                                              child: SizedBox(
                                                width: 28*fem,
                                                height: 28*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/frame-158-4Zj.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame232z6h (9:430)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                                          width: double.infinity,
                                          height: 32*fem,
                                          child: Container(
                                            // frame1278Cu (9:431)
                                            padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1*fem, 1*fem),
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff405059),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Center(
                                              // rinmget1TW5 (9:432)
                                              child: SizedBox(
                                                width: 30*fem,
                                                height: 30*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/rinmget-1.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame228CCm (9:433)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                                          width: double.infinity,
                                          height: 32*fem,
                                          child: Container(
                                            // frame125981 (9:434)
                                            padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1*fem, 1*fem),
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff73b06f),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Center(
                                              // ellipse4Uvy (9:435)
                                              child: SizedBox(
                                                width: double.infinity,
                                                height: 30*fem,
                                                child: Container(
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(15*fem),
                                                    image: DecorationImage (
                                                      fit: BoxFit.cover,
                                                      image: AssetImage (
                                                        'assets/page-1/images/ellipse-4-bg-QUd.png',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame230cGV (9:436)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                                          width: double.infinity,
                                          height: 32*fem,
                                          child: Container(
                                            // frame125kdb (9:437)
                                            padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1*fem, 1*fem),
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff73b06f),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Center(
                                              // rinmget1tE1 (9:438)
                                              child: SizedBox(
                                                width: 30*fem,
                                                height: 30*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/rinmget-1-wtq.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame229cvh (9:439)
                                          width: double.infinity,
                                          height: 32*fem,
                                          child: Container(
                                            // frame126naH (9:440)
                                            padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1*fem, 1*fem),
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff73b06f),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Center(
                                              // ellipse288M (9:441)
                                              child: SizedBox(
                                                width: double.infinity,
                                                height: 30*fem,
                                                child: Container(
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(15*fem),
                                                    image: DecorationImage (
                                                      fit: BoxFit.cover,
                                                      image: AssetImage (
                                                        'assets/page-1/images/ellipse-2-bg-ZbB.png',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame231ra9 (9:442)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                    height: 321*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupzuzoC8D (GHyKhuEJs7YDQZzooRZuZo)
                                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 173.33*fem, 0*fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // namecolumnKCq (9:443)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 182.33*fem, 0*fem),
                                                width: 99*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogrouppncv3Pj (GHyKw9MEz5MkkDJBawPNCV)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32*fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            // nameAjF (9:445)
                                                            'Name',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff2d3036),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // deanoamor6N1 (9:447)
                                                            'Deano Amor',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // jackhuseinBuF (9:449)
                                                            'Jack Husein',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // mariesiray7Y1 (9:451)
                                                            'Marie Siray',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // jakalagunaS4V (9:453)
                                                            'Jaka Laguna',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      // erfisiennotamsT (9:455)
                                                      'Erfisien Nota',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.625*ffem/fem,
                                                        color: Color(0xff616874),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // activitycolumn7gR (9:456)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 182.33*fem, 0*fem),
                                                width: 277*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // activitySTo (9:458)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32*fem),
                                                      child: Text(
                                                        'Activity',
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.625*ffem/fem,
                                                          color: Color(0xff2d3036),
                                                        ),
                                                      ),
                                                    ),
                                                    RichText(
                                                      // lastcheckoutat12dec1230pmkzH (9:460)
                                                      text: TextSpan(
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff616874),
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: 'Last Check out at ',
                                                          ),
                                                          TextSpan(
                                                            text: '12 Dec - 12.30 PM',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.5*ffem/fem,
                                                              color: Color(0xff157bff),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // autogroupkfau6qB (GHyLRP3CBdvAtAkHYPkfau)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 32*fem, 0*fem, 0*fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          RichText(
                                                            // lastcheckoutat13dec930pmDeu (9:462)
                                                            text: TextSpan(
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff616874),
                                                              ),
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Last Check out at ',
                                                                ),
                                                                TextSpan(
                                                                  text: '13 Dec - 9.30 PM',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 16*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.5*ffem/fem,
                                                                    color: Color(0xff157bff),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          RichText(
                                                            // checkinat12dec630pmATf (9:464)
                                                            text: TextSpan(
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff616874),
                                                              ),
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Check In at ',
                                                                ),
                                                                TextSpan(
                                                                  text: '12 Dec - 6.30 PM',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 16*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.5*ffem/fem,
                                                                    color: Color(0xff157bff),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          RichText(
                                                            // lastcheckoutat11dec1230pm837 (9:466)
                                                            text: TextSpan(
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff616874),
                                                              ),
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Last Check out at ',
                                                                ),
                                                                TextSpan(
                                                                  text: '11 Dec - 12.30 PM',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 16*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.5*ffem/fem,
                                                                    color: Color(0xff157bff),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          RichText(
                                                            // lastcheckoutat7dec930pmtgV (9:468)
                                                            text: TextSpan(
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff616874),
                                                              ),
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Last Check out at ',
                                                                ),
                                                                TextSpan(
                                                                  text: ' 7 Dec - 9.30 PM',
                                                                  style: SafeGoogleFont (
                                                                    'Inter',
                                                                    fontSize: 16*ffem,
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 1.5*ffem/fem,
                                                                    color: Color(0xff157bff),
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
                                                // timecolumngsF (9:469)
                                                width: 80*fem,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // autogroup5df3dXb (GHyLqHX2dLV6Af3RVZ5DF3)
                                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32*fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            // timekMK (9:471)
                                                            'Time',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w600,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff2d3036),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // pmgEy (9:473)
                                                            '13:00 PM ',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // pmWjo (9:475)
                                                            '13:00 PM ',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // ame5K (9:477)
                                                            '10:00 AM ',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 32*fem,
                                                          ),
                                                          Text(
                                                            // amApM (9:479)
                                                            '10:00 AM ',
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.625*ffem/fem,
                                                              color: Color(0xff616874),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      // amiL5 (9:481)
                                                      '09:00 AM ',
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.625*ffem/fem,
                                                        color: Color(0xff616874),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // statusrow493 (9:482)
                                          width: 95*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // autogroupyy3bnaq (GHyNCkEdM7QLCWqgCdyy3B)
                                                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // status7d7 (9:484)
                                                      margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 27*fem),
                                                      child: Text(
                                                        'Status',
                                                        style: SafeGoogleFont (
                                                          'Inter',
                                                          fontSize: 16*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.625*ffem/fem,
                                                          color: Color(0xff2d3036),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // statusqZ7 (9:486)
                                                      width: 83*fem,
                                                      height: 36*fem,
                                                      decoration: BoxDecoration (
                                                        color: Color(0xffeef9fa),
                                                        borderRadius: BorderRadius.circular(6*fem),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'In Room',
                                                          style: SafeGoogleFont (
                                                            'Inter',
                                                            fontSize: 14*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.7142857143*ffem/fem,
                                                            color: Color(0xff316b6e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // status82R (9:489)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                                width: double.infinity,
                                                height: 36*fem,
                                                decoration: BoxDecoration (
                                                  color: Color(0xfffdecec),
                                                  borderRadius: BorderRadius.circular(6*fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Out Room',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.7142857143*ffem/fem,
                                                      color: Color(0xff832525),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // statusQVj (9:492)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                                width: 83*fem,
                                                height: 36*fem,
                                                decoration: BoxDecoration (
                                                  color: Color(0xffeef9fa),
                                                  borderRadius: BorderRadius.circular(6*fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'In Room',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.7142857143*ffem/fem,
                                                      color: Color(0xff316b6e),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // statusG29 (9:495)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                                width: double.infinity,
                                                height: 36*fem,
                                                decoration: BoxDecoration (
                                                  color: Color(0xfffdecec),
                                                  borderRadius: BorderRadius.circular(6*fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Out Room',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.7142857143*ffem/fem,
                                                      color: Color(0xff832525),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // statusjwK (9:498)
                                                width: 83*fem,
                                                height: 36*fem,
                                                decoration: BoxDecoration (
                                                  color: Color(0xffeef9fa),
                                                  borderRadius: BorderRadius.circular(6*fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'In Room',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 14*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.7142857143*ffem/fem,
                                                      color: Color(0xff316b6e),
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
        )
      ),
    );
  }
}

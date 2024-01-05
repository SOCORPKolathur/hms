import 'package:flutter/material.dart';
import 'package:hms/firstpage.dart';
import 'package:hms/utils.dart';



class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  bool _showpassword=true;
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1861;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // signupfVK (10:90)
            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 169.2*fem, 0*fem),
            width: double.infinity,
            decoration: const BoxDecoration (
              color: Color(0xfffafafa),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // bgVz9 (10:851)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 271.85*fem, 0*fem),
                  padding: EdgeInsets.fromLTRB(57*fem, 20*fem, 57.77*fem, 0),
                  width: 523.15*fem,
                  height: 1000.52*fem,
                  decoration: const BoxDecoration (
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // logoLjs (10:936)
                        margin: EdgeInsets.fromLTRB(150.86*fem, 0*fem, 150.08*fem, 17.97*fem),
                        width: double.infinity,
                        decoration: const BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/images/subtract-TqK.png',
                            ),
                          ),
                        ),
                        child: Center(
                          // subtractT3o (10:943)
                          child: SizedBox(
                            width: 107.43*fem,
                            height: 107.43*fem,
                           /* child: Image.asset(
                              Logo,
                              width: 107.43*fem,
                              height: 107.43*fem,
                            ),*/
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(11.63*fem, 0*fem, 0*fem, 41.5*fem),
                        constraints: BoxConstraints (
                          maxWidth: 332*fem,
                        ),
                        child: Text(
                          "Hostel Management Admin",
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 30*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff151D48),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupzqm5qKF (T1hYR6MrKx3z5s33k2ZqM5)
                        margin: EdgeInsets.fromLTRB(1.39*fem, 0*fem, 0.61*fem, 32.11*fem),
                        width: double.infinity,
                        height: 58.39*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // bgkSD (10:918)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25.69*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(30.61*fem, 17.5*fem, 57.77*fem, 16.35*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xfff7f7f8),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // logoRYM (10:922)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.96*fem, 0*fem),
                                    width: 27.16*fem,
                                    height: 24.54*fem,
                                    child: Image.asset(
                                      "assets/unnamed.png",
                                      width: 27.16*fem,
                                      height: 24.54*fem,
                                    ),
                                  ),
                                  Container(
                                    // googleHqT (10:921)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.5*fem),
                                    child: Text(
                                      'Google',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: const Color(0xff030229),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // bgoJ1 (10:911)
                              padding: EdgeInsets.fromLTRB(36.41*fem, 17.5*fem, 55.78*fem, 16.35*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xfff7f7f8),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // logoubw (10:915)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.4*fem, 0*fem),
                                    width: 13.58*fem,
                                    height: 22.54*fem,
                                    child: Image.asset(
                                      "assets/unnamed (1).png",
                                      width: 13.58*fem,
                                      height: 24.54*fem,
                                    ),
                                  ),
                                  Container(
                                    // facebookD6q (10:914)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.5*fem),
                                    child: Text(
                                      'Facebook',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: const Color(0xff030229),
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
                        // orvX3 (10:904)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 26.6*fem),
                        width: 406.37*fem,
                        height: 22*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // orq8D (10:906)
                              left: 192.6765136719*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 19*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Or',
                                    style: SafeGoogleFont (
                                      'Nunito',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: const Color(0xff030229),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // line75j (10:907)
                              left: 0*fem,
                              top: 12.8450927734*fem,
                              child: SizedBox(
                                width: 406.37*fem,
                                height: 1*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // usernameS81 (10:883)
                        margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 23.35*fem),
                        width: 406.37*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(10*fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // usernameLUH (10:889)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10.03*fem),
                              child: Text(
                                'Username',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625*ffem/fem,
                                  color: const Color(0xff030229),
                                ),
                              ),
                            ),
                            Container(
                              // bgrBj (10:884)
                              padding: EdgeInsets.fromLTRB(17.52*fem, 18.68*fem, 17.52*fem, 17.7*fem),
                              width: 270,
                              height: 40,
                              decoration: BoxDecoration (
                                color: const Color(0xfff7f7f8),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: TextField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(bottom: 20)
                                ),
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625*ffem/fem,
                                  color: const Color(0xff030229),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // passwordvSV (10:863)
                        margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 29.19*fem),
                        width: 406.37*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // passwordrL9 (10:882)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10.03*fem),
                              child: Text(
                                'Password',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625*ffem/fem,
                                  color: const Color(0xff030229),
                                ),
                              ),
                            ),
                            Container(
                              // bgrBj (10:884)
                              padding: EdgeInsets.fromLTRB(17.52*fem, 18.68*fem, 17.52*fem, 17.7*fem),
                              width: 270,
                              height: 40,
                              decoration: BoxDecoration (
                                color: const Color(0xfff7f7f8),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: TextField(
                                controller: passwordController,
                                obscureText: _showpassword,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.only(bottom: 20),
                                    suffixIcon: InkWell(

                                        onTap:(){
                                          setState((){
                                            _showpassword=!_showpassword;
                                          });
                                        },
                                        child: const Icon(Icons.remove_red_eye,size: 22,color:Color(0xff030229)))
                                ),
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625*ffem/fem,
                                  color: const Color(0xff030229),

                                ),
                                onSubmitted: (value){

                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // checkboxtext1RK (10:858)
                        margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 1.17*fem, 35.03*fem),
                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.01*fem, 0*fem),
                        width: double.infinity,
                        height: 51.38*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(2*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // boxJ9X (10:859)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.68*fem, 24.52*fem),
                              width: 17.52*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(2*fem),
                              ),
                              child: Center(
                                // rectangle22Rjw (10:860)
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 17.52*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2*fem),
                                      border: Border.all(color: const Color(0x7f030229)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // bycreatinganaccountyouagreetot (10:862)
                              constraints: BoxConstraints (
                                maxWidth: 375*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Roboto',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.171875*ffem/fem,
                                    color: const Color(0xff030229),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'By creating an account you agree to the ',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: const Color(0xff030229),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'terms of use',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        decoration: TextDecoration.underline,
                                        color: const Color(0xff605bff),
                                        decorationColor: const Color(0xff605bff),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' and our',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: const Color(0xff030229),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        color: const Color(0xff030229),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'privacy policy.',
                                      style: SafeGoogleFont (
                                        'Nunito',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3625*ffem/fem,
                                        decoration: TextDecoration.underline,
                                        color: const Color(0xff605bff),
                                        decorationColor: const Color(0xff605bff),
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
                        // button5Wy (10:855)
                        margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 35.03*fem),
                        child: TextButton(
                          onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FirstPage()));

                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 406.37*fem,
                            height: 58.39*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xff605bff),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3625*ffem/fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // donthaveanaccountsigninWcH (10:854)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49.92*fem, 0*fem),
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Nunito',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625*ffem/fem,
                              color: const Color(0xff030229),
                            ),
                            children: [
                              const TextSpan(
                                text: 'Don’t have an account? ',
                              ),
                              TextSpan(
                                text: 'Sign in',
                                style: SafeGoogleFont (
                                  'Nunito',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625*ffem/fem,
                                  color: const Color(0xff605bff),
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
                  // illustrationWeD (10:91)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.27*fem),
                  width: 896.8*fem,
                  height: 506.73*fem,
                  child: Image.asset(
                    "assets/happycaretakersloginimg.png",
                    width: 896.8*fem,
                    height: 506.73*fem,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }




  final snackBar = SnackBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 3),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              spreadRadius: 2.0,
              blurRadius: 8.0,
              offset: Offset(2, 4),
            )
          ],
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            const Icon(Icons.info_outline, color: Colors.black),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Invalid Credentials !!', style: TextStyle(color: Colors.black)),
            ),
            const Spacer(),
            TextButton(onPressed: () => debugPrint("Undid"), child: const Text("Undo"))
          ],
        )
    ),
  );



}

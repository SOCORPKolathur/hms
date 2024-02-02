import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String Hostelimg='assets/hotel-7802432-6184485 1.png';
String LivingRoomimg='assets/living-room-5989526-5251981 1.png';
String Bedtimg='assets/double-bed-5849606-4898092 1.png';
String dollimg='assets/DoolImg.png';
String Groupimg='assets/Group.png';
String Loginpageimg='assets/happycaretakersloginimg.png';
String Googleimg="assets/logo-5Ud.png";
String Fbimg="assets/logo-EjT.png";
String Hostelers="assets/Joob Seeker.png";


double TextSizeextraSmall=12;
double TextSizeSmall=14;
double TextSizeMedium=16;
double TextSizeLarge=18;
double TextSizeEXLarge=20;

Color HeadingTextColor=const Color(0xff000000);
Color SubheadingTextColor=const Color(0xff5E5E5E);
Color searchTextColor=const Color(0xff545454);
Color  TextColorwhite=const Color(0xffFFFFFF);

/// Dash Board
Color  ShippedColor=const Color(0xffC49D50);
Color  DeliveryedColor=const Color(0xff73FFCC);
Color  DeliverypendingColor=const Color(0xff6F82E8);
double cardCounterTextSize=40;
Color BuildingsCardColor = const Color(0xff0BF4C8);
Color RoomsCard =const Color(0xffFAD85D);
Color AllocatedBedCardColor=const Color(0xffF2A0FF);
Color HostlersCardColor =const Color(0xffC49D50);
String LogoImg="assets/page-1/images/frame-D25.png";


/// User Screen
Color  HostelTextColor=const Color(0xff2D3036);
Color  UsersearchConColor=const Color(0xffF4F6F8);
Color  ContainerColor=const Color(0xff0000000);
Color  ListedContainerColor=const Color(0xff7F69DC);
Color  InRoomColor=const Color(0xff316B6E);
Color  OutRoomColor=const Color(0xff832525);
Color  OutRoomContainerColor=const Color(0xffFDECEC);
Color  InRoomContainerColor=const Color(0xffEEF9FA);
Color  UsersTextColor=Colors.grey.shade600;

String SuccesDataSvg="assets/Success Users.svg";


String fontWeightlight='light';
String fontWeightmedium='medium';
String fontWeightmediumextra='mediumextra';
String fontWeightmediumextraPlus='mediumextraPlus';




/// drwer properties
Color drawerColor=const Color(0xff161717);
Color  hoverColor1=const Color(0xffFFFFFF).withOpacity(0.8);
Color  hoverColor2=const Color(0xff161717);
Color  DrawerTextColor=const Color(0xffFFFFFF);
Color  DrawerTextSelectedColor=const Color(0xFFE7E7E7);
Color  SelectedColor=const Color(0xff161717);




/// Complaint Screen Properties

Color TodoContainerColor=const Color(0xffFF5C5C);
Color OnProccessContainerColor=const Color(0xffFAD85D);
Color CompletedContainerColor=const Color(0xff73B06F);

Color DateTimeColor=const Color(0xff616874);
Color ContentColor=const Color(0xff616874);
Color DTDataColor=const Color(0xff2D3036);

String overflowYes="Yes";
String overflowNO="NO";


/// message Screen Properties

String  chatImg="assets/Chats img.json";
String  LoadingLottieFile="assets/Loading.json";
String  paperclipImg="assets/paperclip.png";
String  SendIconImg="assets/send icon.png";
Color MeaasgeContainerColor=Color(0xff000000);

/// Todo And more Container color and Properties
Color TodoTextColor=const Color(0xff2D3036);

  textStyle({TextColor,TextSize,fontWeight,overflow}){

    return GoogleFonts.getFont(
      "Nunito",
      color: TextColor,
      fontSize: TextSize,
      fontWeight: fontWeight=="light"?
      FontWeight.w500:fontWeight=="medium"?
      FontWeight.w600:fontWeight=="mediumextra"?
      FontWeight.w700:fontWeight=="mediumextraPlus"?
      FontWeight.w800:FontWeight.w400,
      textStyle:
      overflow=="Yes"?
      const TextStyle(
        overflow: TextOverflow.ellipsis
      ):const TextStyle()

    );
}

 sendPushMessage({required String token, required String body, required String title}) async {
  try {
    await http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization':
        'key=AAAABU3ypzU:APA91bGgVmIXhWdfXhXZIuFg9S6JNVkaKqnzb4DwVRmzmmlM4erYBa1goSNZolsGK9zVNRIiSTsoTVZQCGwSQbWDwRizi22c6bwYMkSIriuJF-rmjGgvjIQ0NnBjrIh0q6ghbIkOmYmz',
      },
      body: jsonEncode(
        <String, dynamic>{
          'notification': <String, dynamic>{'body': body, 'title': title},
          'priority': 'high',
          'data': <String, dynamic>{
            'click_action': 'FLUTTER_NOTIFICATION_CLICK',
            'id': '1',
            'status': 'done'
          },
          "to": token,
        },
      ),
    );

  } catch (e) {
    print("error push notification");
  }
}
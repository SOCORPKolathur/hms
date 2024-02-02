
import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hms/Const_File.dart';
import 'package:hms/Model/LanguageModel.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Message_Screen extends StatefulWidget {
  const Message_Screen({super.key});

  @override
  State<Message_Screen> createState() => _Message_ScreenState();
}

class _Message_ScreenState extends State<Message_Screen> {
  var expand = "";
  var expand2 = "";
  var acadamicYear = "";
  var departmentName = "";

  var select;
  bool activeStatus = false;
  String name = "";
  String UserImg = "";
  String usertoken = "";

  final TextEditingController message = TextEditingController();
  final TextEditingController _searchController = TextEditingController();

  TabController? tabController;
  int selectTabIndex = 0;

  String SerachValue = "";

  var colorValue;



  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return FadeInRight(
      child: Column(
        children: [
          SizedBox(
            height: height / 65.7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width / 3.415,
                height: height / 1.095,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 43.4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width / 170.75, right: width / 170.75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'Message',
                            style: textStyle(
                              TextColor: HeadingTextColor,
                              fontWeight: fontWeightmediumextra,

                            ),
                          ),
                          Container(
                            height: height / 21.7,
                            width: width / 45.5333,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: MeaasgeContainerColor),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 43.4,
                    ),
                    Container(
                      height: height / 16.275,
                      width: width / 3.5947,
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F8),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: _searchController,
                        style: textStyle(
                          TextColor: HeadingTextColor,
                          fontWeight: fontWeightmediumextra,

                        ),
                        decoration: InputDecoration(
                          prefixIcon:
                          Icon(Icons.search, color: Color(0xff8B8395)),
                          suffixIcon: InkWell(
                              onTap: (){
                                setState(() {
                                  SerachValue="";
                                  _searchController.clear();
                                });
                              },
                              child: Icon(Icons.clear, color: Color(0xff8B8395))),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: textStyle(
                            TextColor: HeadingTextColor,
                            fontWeight: fontWeightmediumextra,
                          ),
                          contentPadding: EdgeInsets.only(
                              bottom: height / 65.1, top: height / 65.1),
                        ),
                        onChanged: (value) {
                          setState(() {

                          });
                          print(_searchController.text.toString());

                        },
                      ),
                    ),
                    SizedBox(
                      height: height / 43.4,
                    ),

                    SizedBox(
                      height: height / 1.6275,
                      width: width / 3.415,
                      child:    StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance.collection("HostelUsers").
                        orderBy('timestamp',descending: true).snapshots(),
                        builder: (context, snapshot){
                          if(snapshot.hasData==null){
                            return Center(
                                child: SizedBox(
                                  height: height / 5.06,
                                  width: width / 2.61,
                                  child: Lottie.asset(
                                      LoadingLottieFile),
                                ));
                          }
                          if(!snapshot.hasData){
                            return Center(
                                child: SizedBox(
                                  height: height / 5.06,
                                  width: width / 2.61,
                                  child: Lottie.asset(
                                      LoadingLottieFile),
                                ));
                          }

                          return
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                if(_searchController.text!=""){

                                  if(snapshot.data!.docs[index]['Name'].toString().toLowerCase().
                                  contains(_searchController.text.toLowerCase().toString())||
                                      snapshot.data!.docs[index]['Phone'].toString().toLowerCase().
                                      contains(_searchController.text.toLowerCase().toString())

                                  ){
                                    return
                                      Padding(
                                        padding:  EdgeInsets.only(

                                            left:width/653 ,
                                            right:width/653 ,
                                            top:height/328.5 ,
                                            bottom:height/328.5
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(left:  width/273.2,right: width/273.2),
                                          decoration: BoxDecoration(
                                              color: select==index?MeaasgeContainerColor.withOpacity(0.7):Colors.transparent,
                                              border: Border(
                                                  bottom: BorderSide(color: Colors.grey.shade300)
                                              ),
                                            borderRadius: BorderRadius.circular(2)
                                          ),
                                          child: ListTile(
                                            onTap: (){
                                              setState(() {
                                                select=index;
                                                expand= snapshot.data!.docs[index].id;
                                                name=snapshot.data!.docs[index]['Name'];
                                                usertoken=snapshot.data!.docs[index]['Token'];
                                                UserImg=snapshot.data!.docs[index]['UserImg'];
                                                activeStatus=snapshot.data!.docs[index]['Active'];
                                              });
                                            },
                                            leading:
                                            Container(
                                                height: height/20.9,
                                                width: width/44.5333,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffDFDEFF),
                                                    borderRadius: BorderRadius.circular(100),
                                                    image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(snapshot.data!.docs[index]["UserImg"])
                                                    )
                                                ),

                                                child:Center(
                                                  child: snapshot.data!.docs[index]["UserImg"]==""?Icon(Icons.person):Text(""),
                                                )
                                            ),
                                            title: KText(text:snapshot.data!.docs[index]['Name'].toString(),style:
                                            textStyle(TextColor:select==index?Colors.white: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)),
                                            subtitle:
                                            Row(
                                              children: [
                                                KText(text:"${snapshot.data!.docs[index]['UserType'].toString()}",
                                                    style:  textStyle(TextColor:select==index?Colors.white: Colors.black,TextSize: TextSizeSmall,fontWeight: fontWeightmedium)),
                                              ],
                                            ) ,

                                          ),
                                        ),
                                      );
                                  }
                                }
                                else if(_searchController.text=="") {
                                  return
                                    Padding(
                                      padding:  EdgeInsets.only(

                                          left:width/653 ,
                                          right:width/653 ,
                                          top:height/328.5 ,
                                          bottom:height/328.5
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left:  width/273.2,right: width/273.2),
                                        decoration: BoxDecoration(
                                            color: select==index?MeaasgeContainerColor.withOpacity(0.7):Colors.transparent,
                                            border: Border(
                                                bottom: BorderSide(color: Colors.grey.shade300)
                                            ),
                                            borderRadius: BorderRadius.circular(2)
                                        ),
                                        child: ListTile(
                                          onTap: (){
                                            setState(() {
                                              select=index;
                                              expand= snapshot.data!.docs[index].id;
                                              name=snapshot.data!.docs[index]['Name'];
                                              usertoken=snapshot.data!.docs[index]['Token'];
                                              UserImg=snapshot.data!.docs[index]['UserImg'];
                                              activeStatus=snapshot.data!.docs[index]['Active'];
                                            });
                                          },
                                          leading:
                                          Container(
                                              height: height/20.9,
                                              width: width/44.5333,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffDFDEFF),
                                                  borderRadius: BorderRadius.circular(100),
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(snapshot.data!.docs[index]["UserImg"])
                                                  )
                                              ),

                                              child:Center(
                                                child: snapshot.data!.docs[index]["UserImg"]==""?Icon(Icons.person):Text(""),
                                              )
                                          ),
                                          title: KText(text:snapshot.data!.docs[index]['Name'].toString(),style:
                                          textStyle(TextColor:select==index?Colors.white: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)),
                                          subtitle:
                                          Row(
                                            children: [
                                              KText(text:"${snapshot.data!.docs[index]['UserType'].toString()}",
                                                  style:  textStyle(TextColor:select==index?Colors.white: Colors.black,TextSize: TextSizeSmall,fontWeight: fontWeightmedium)),
                                            ],
                                          ) ,

                                        ),
                                      ),
                                    );
                                }
                                return const SizedBox();

                              },);

                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width / 273.2,
              ),
              expand != ""
                  ? ShowUpAnimation(
                animationDuration: Duration(seconds: 1),
                direction: Direction.horizontal,
                curve: Curves.linear,
                child: Container(
                  width: width / 1.95,
                  height: height / 1.095,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: height / 1.095,
                        child: Column(
                          children: [
                            Container(
                              height: height / 10.85,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:const  Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width / 136.6,
                                  ),
                                  Container(
                                    height: height / 20.9,
                                    width: width / 44.5333,
                                    decoration: BoxDecoration(
                                        color: Color(0xffDFDEFF),
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(UserImg))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: height / 81.375,
                                        horizontal: width / 170.75),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        KText(
                                          text: name.toString(),
                                          style: textStyle(
                                            fontWeight: fontWeightmedium,
                                            TextSize: TextSizeMedium,
                                            TextColor: Colors.black
                                          )
                                        ),
                                        KText(
                                          text:
                                          activeStatus ? "Online" : "",
                                          style: textStyle(
                                              fontWeight: fontWeightmedium,
                                              TextSize: TextSizeSmall,
                                              TextColor: Colors.black
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection("HostelUsers").doc(expand).collection("Messages").
                              orderBy('timestamp',)
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return Expanded(
                                  child: SingleChildScrollView(
                                    reverse: true,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                      NeverScrollableScrollPhysics(),
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  15)),
                                          margin: EdgeInsets.only(
                                              bottom: height / 25.7,
                                              left: width / 136.6,
                                              right: width / 136.6),
                                          child:
                                          snapshot.data!.docs[index]
                                          ["From"] ==
                                              "Admin"
                                              ? GestureDetector(
                                            onTap: () {

                                              showdialog(snapshot.data!.docs[index].id,expand);

                                            },
                                            child: Align(
                                                alignment:
                                                Alignment
                                                    .topRight,
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .end,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: width /
                                                              54.64),
                                                      child:
                                                      Container(
                                                        padding: EdgeInsets.only(
                                                            left: width /
                                                                136.6,
                                                            right: width /
                                                                130.6,
                                                            top: height /
                                                                65.7,
                                                            bottom:
                                                            height / 65.7),
                                                        margin: EdgeInsets.only(
                                                            bottom:
                                                            height / 105.7),
                                                        decoration: BoxDecoration(
                                                            color: MeaasgeContainerColor,
                                                            borderRadius: BorderRadius.only(
                                                              topLeft:
                                                              Radius.circular(8),
                                                              topRight:
                                                              Radius.circular(8),
                                                              bottomLeft:
                                                              Radius.circular(8),
                                                            )),
                                                        child:
                                                        Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.spaceAround,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.end,
                                                          children: [
                                                            KText(
                                                              text:
                                                              snapshot.data!.docs[index]["Message"].toString(),
                                                              style: textStyle(
                                                                  fontWeight: fontWeightmedium,
                                                                  TextSize: TextSizeMedium,
                                                                  TextColor: Colors.white
                                                              )
                                                            ),
                                                            KText(
                                                              text:
                                                              snapshot.data!.docs[index]["time"].toString(),
                                                              style: textStyle(
                                                                  fontWeight: fontWeightmedium,
                                                                  TextSize: TextSizeMedium,
                                                                  TextColor: Colors.white
                                                              )
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height:
                                                      height /
                                                          20.9,
                                                      width: width /
                                                          44.5333,
                                                      decoration: BoxDecoration(
                                                          color: Color(0xffDFDEFF),
                                                          borderRadius: BorderRadius.circular(100),
                                                          image: DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: NetworkImage(UserImg)
                                                          )

                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          )
                                              : GestureDetector(

                                            onTap: (){
                                              showdialog(snapshot.data!.docs[index].id,expand);

                                            },
                                            child: Align(
                                              alignment:
                                              Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .end,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: width /
                                                            54.64),
                                                    child:
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: width /
                                                              130.6,
                                                          right: width /
                                                              136.6,
                                                          top: height /
                                                              65.7,
                                                          bottom: height /
                                                              65.7),
                                                      decoration:
                                                      BoxDecoration(
                                                          color: MeaasgeContainerColor.withOpacity(
                                                              0.8),
                                                          borderRadius:
                                                          BorderRadius.only(
                                                            topLeft:
                                                            Radius.circular(8),
                                                            topRight:
                                                            Radius.circular(8),
                                                            bottomRight:
                                                            Radius.circular(8),
                                                          )),
                                                      margin: EdgeInsets.only(
                                                          bottom: height /
                                                              105.7),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          KText(
                                                            text: snapshot
                                                                .data!
                                                                .docs[index]["Message"]
                                                                .toString(),
                                                            style:
                                                            textStyle(
                                                                fontWeight: fontWeightmedium,
                                                                TextSize: TextSizeMedium,
                                                                TextColor: Colors.white
                                                            )
                                                          ),
                                                          KText(
                                                            text: snapshot
                                                                .data!
                                                                .docs[index]["time"]
                                                                .toString(),
                                                            style:
                                                            textStyle(
                                                                fontWeight: fontWeightmedium,
                                                                TextSize: TextSizeMedium,
                                                                TextColor: Colors.white
                                                            )
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: height /
                                                        20.9,
                                                    width: width /
                                                        44.5333,
                                                    decoration: BoxDecoration(
                                                      color: Color(
                                                          0xffDFDEFF),
                                                      image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(UserImg)),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          100),),

                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: height / 13.14,
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: height / 13.14,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 0.5,
                                      blurRadius: 0.5)
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(
                                left: width / 136.6,
                                right: width / 136.6,
                                bottom: height / 65.7),
                            child: TextField(
                              controller: message,
                              style: textStyle(
                                  fontWeight: fontWeightmedium,
                                  TextSize: TextSizeMedium,
                                  TextColor: Colors.black
                              ),
                              onTap: () {},
                              onSubmitted: (_) {
                                chatfuntion();
                                message.clear();
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width / 136.6,
                                        vertical: height / 65.1),
                                    child: Container(
                                      height: 1,
                                      width: 1,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(paperclipImg))),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Image.asset(SendIconImg),
                                    onPressed: () {
                                      chatfuntion();
                                      message.clear();
                                    },
                                  ),
                                  contentPadding: EdgeInsets.only(
                                      left: width / 68.3,
                                      top: height / 32.85,
                                      bottom: height / 43.8),
                                  border: InputBorder.none,
                                  hintText: "Type your message",
                                  hintStyle: textStyle(
                                    TextColor: HeadingTextColor,
                                    fontWeight: fontWeightmediumextra,

                                  ),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ): Container(
                width: width / 1.95,
                height: height / 1.095,
                child: Lottie.asset(chatImg),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
              ),
            ],
          )
        ],
      ),
    );
  }

  chatfuntion() {
    FirebaseFirestore.instance.collection("HostelUsers").doc(expand).collection("Messages").doc().set({
      "Message": message.text,
      "time": DateFormat('hh:mm a').format(DateTime.now()),
      "timestamp": DateTime.now().millisecondsSinceEpoch,
      "From": "Admin",
      "date":
      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}"
    });
    sendPushMessage(title: "${name.toString()}New Message".toString(),body: message.text,token: usertoken.toString());
  }






  deletechats(id, expand) {
    FirebaseFirestore.instance.collection("HostelUsers").doc(expand).collection("Messages").doc(id).delete();
  }



  //delete chats
  Future showdialog(id, expand) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: KText(
            text: "Delete",
            style: textStyle(
              TextColor: HeadingTextColor,
              fontWeight: fontWeightmediumextra,

            ),
          ),
          content: SizedBox(
            height: height / 2.95909,
            width: width / 5.0,
            child: Column(
              children: [
                KText(
                  text: "Are you sure want to delete",
                  style: textStyle(
                      fontWeight: fontWeightmedium,
                      TextSize: TextSizeMedium,
                      TextColor: Colors.black
                  )
                ),
                SizedBox(
                  height: height / 21.7,
                ),

                Icon(Icons.delete,size: width/17.075,),
                SizedBox(
                  height: height / 21.7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          deletechats(id, expand);
                          Navigator.pop(context);
                        },
                        child: Card(
                            color: HeadingTextColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding:  EdgeInsets.only(left: width/91.066,right: width/91.066,
                                  top: height/130.2,bottom: height/130.2),
                              child: KText(
                                text: "Yes",
                                style: textStyle(
                                    fontWeight: fontWeightmedium,
                                    TextSize: TextSizeMedium,
                                    TextColor: Colors.white
                                )
                              ),
                            ))),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding:  EdgeInsets.only(left: width/91.066,right: width/91.066,
                                  top: height/130.2,bottom: height/130.2),
                              child: KText(
                                text: "No",
                                style: textStyle(
                                    fontWeight: fontWeightmedium,
                                    TextSize: TextSizeMedium,
                                    TextColor: Colors.white
                                ),
                                ),
                              ),
                            )
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }








}

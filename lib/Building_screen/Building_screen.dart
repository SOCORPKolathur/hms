import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hms/Const_File.dart';
import 'package:hms/Model/LanguageModel.dart';
import 'package:intl/intl.dart';


class Building_screen extends StatefulWidget {
  const Building_screen({super.key});

  @override
  State<Building_screen> createState() => _Building_screenState();
}

class _Building_screenState extends State<Building_screen> {

  List datalist = [
    "Edit",
    "Delete",
  ];

  bool filtervalue=false;
  TextEditingController buildingNameContoller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(left:width/170.75,top: height/54.25),
      child: SizedBox(
        height: 600,
        child: FadeInRight(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(vertical: height/81.375, horizontal: width/170.75),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      KText(
                          text: "Buildings",
                          style: textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                      ),



                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:width/1.39),
                      child: InkWell(
                        onTap: () async {
                          addItemPopUp();
                        },
                        child: Container(
                          height: height / 16.275,
                          width: width/10.9714,
                          decoration: BoxDecoration(
                            color: HeadingTextColor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 2),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child:
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width / 227.66),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add,color:Colors.white),
                                KText(
                                    text: "Add",
                                    style: textStyle(TextColor: Colors.white,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                Container(
                  width:width/1.26,
                  height:height/12.316666,
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width/455.33,vertical: height/217),
                    child: Row(
                      children: [
                        SizedBox(
                          width:width/12.075,
                          child: Row(
                            children: [
                              KText(
                                  text: "No.",
                                  style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                              ),/*
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      filtervalue = !filtervalue;
                                    });
                                  },
                                  child: Transform.rotate(
                                    angle: filtervalue ? 200 : 0,
                                    child: Opacity(
                                      // arrowdown2TvZ (8:2307)
                                      opacity: 0.7,
                                      child: SizedBox(
                                        width: width/153.6,
                                        height: height/73.9,
                                        child: Image.asset(
                                          'assets/images/arrow-down-2.png',
                                          width: width/153.6,
                                          height: height/73.9,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                        SizedBox(

                          width: width/1.9,
                          child: Row(
                            children: [
                              KText(
                                  text: "Building Name",
                                  style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                              ),
                              /*Padding(
                                padding: const EdgeInsets.only(
                                    left: 8),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      filtervalue = !filtervalue;
                                    });
                                  },
                                  child: Transform.rotate(
                                    angle: filtervalue ? 200 : 0,
                                    child: Opacity(
                                      // arrowdown2TvZ (8:2307)
                                      opacity: 0.7,
                                      child: Container(
                                        width: width/153.6,
                                        height: height/73.9,
                                        child: Image.asset(
                                          'assets/images/arrow-down-2.png',
                                          width: width/153.6,
                                          height: height/73.9,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                        SizedBox(
                          width:width/7.588,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              KText(
                                  text: "Actions",
                                  style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                              ),
                              /* Padding(
                                padding: const EdgeInsets.only(
                                    left: 8),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      filtervalue = !filtervalue;
                                    });
                                  },
                                  child: Transform.rotate(
                                    angle: filtervalue ? 200 : 0,
                                    child: Opacity(
                                      // arrowdown2TvZ (8:2307)
                                      opacity: 0.7,
                                      child: Container(
                                        width: width/153.6,
                                        height: height/73.9,
                                        child: Image.asset(
                                          'assets/images/arrow-down-2.png',
                                          width: width/153.6,
                                          height: height/73.9,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width/68.3, vertical: height/32.55),
                  child: SizedBox(
                    width:width/1.26,
                    child: StreamBuilder(
                      stream: FirebaseFirestore.instance.collection("Building").orderBy("timestamp").snapshots(),
                      builder: (context, snapshot) {

                        if(snapshot.hasData==null){
                          return const Center(child: CircularProgressIndicator(),);
                        }
                        if(!snapshot.hasData){
                          return const Center(child: CircularProgressIndicator(),);
                        }

                        return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            List<GlobalKey<State<StatefulWidget>>>popMenuKeys = List.generate(snapshot.data!.docs.length, (index) => GlobalKey(),);
                            return SizedBox(
                              height: height/15.850,
                              width: double.infinity,

                              child: Row(

                                children: [
                                  SizedBox(
                                    width:width/12.075,
                                    child:
                                    KText(
                                        text: (index + 1).toString(),
                                        style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                    ),
                                  ),
                                  SizedBox(
                                    width: width/1.9,
                                    child:
                                    KText(
                                        text: snapshot.data!.docs[index]['name'].toString(),
                                        style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                    ),

                                  ),

                                  GestureDetector(
                                    onTap: () {
                                      Popupmenu(context, popMenuKeys[index], size,snapshot.data!.docs[index]['name'].toString(),snapshot.data!.docs[index].id);
                                    },
                                    child: SizedBox(
                                        key: popMenuKeys[index],
                                        width:width/7.588,
                                        child: Icon(
                                            Icons.more_horiz)),
                                  ),

                                ],
                              ),

                            );
                          },);
                      },),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }



  viewPopup(Name) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (ctx) {

        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: Container(
            width: size.width * 0.5,
            height:height/3.695,
            // margin: EdgeInsets.symmetric(horizontal: width/68.3, vertical: height/32.55),
            decoration: BoxDecoration(
              color: HeadingTextColor,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(1, 2),
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                  width: double.infinity,
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: width/68.3, vertical: height/81.375),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "Academic Year Details",
                            style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height/16.275,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(1, 2),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal:width/227.66),
                              child: Center(
                                child: KText(
                                    text: "CLOSE",
                                    style: textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left:width/61.44),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.15,
                            child: KText(
                                text: "Name",
                                style: textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                            ),
                          ),
                          Text(":"),
                          SizedBox(width: width/68.3),
                          Text(
                              Name.toString(),
                              style: textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

      },
    );
  }


  editPopUp(Docid,name) {

    setState(() {
      buildingNameContoller.text=name;
    });
    double height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (ctx) {
        return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.transparent,
                content: Container(
                  width:width/2.56,
                  height:height/2.956,
                  // margin: EdgeInsets.symmetric(horizontal: width/68.3, vertical: height/32.55),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(1, 2),
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      SizedBox(
                        width:width/1.70666,
                        height: height/9.2375,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: width/68.3, vertical: height/81.375),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  KText(
                                      text: "EDIT Item",
                                      style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                  ),
                                  SizedBox(width: width/5.12,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                          height: height/14.78,
                          width: width/5.12,
                          margin: EdgeInsets.only(bottom: height/73.9),
                          decoration: BoxDecoration(
                              color: const Color(
                                  0xffDDDEEE),
                              borderRadius:
                              BorderRadius.circular(
                                  3)),
                          child:
                          TextFormField(
                            /* inputFormatters: [
                              FilteringTextInputFormatter
                                  .allow(RegExp(
                                  "[a-zA-Z ]")),
                            ],*/
                            controller:buildingNameContoller,
                            decoration: InputDecoration(
                              border:
                              InputBorder
                                  .none,
                              contentPadding: EdgeInsets.only(
                                  bottom:
                                  height/73.9,
                                  top: height/369.5,
                                  left:
                                  width/153.6),
                              counterText:
                              "",
                            ),
                          )),

                      Padding(
                        padding:  EdgeInsets.only(top:height/30.39),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: width/5.2925,
                            ),

                            /// Update Button
                            GestureDetector(
                              onTap:(){
                                FirebaseFirestore.instance.collection("Building").doc(Docid).update({
                                  "name":buildingNameContoller.text
                                });
                                Navigator.pop(context);

                              },
                              child: Container(
                                  height: height/18.475,
                                  width: width/12.8,
                                  decoration: BoxDecoration(
                                    color: Color(0xffD60A0B),
                                    borderRadius:
                                    BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: KText(
                                        text: 'Update',
                                        style: textStyle(TextColor: Colors.white,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: width/76.8,
                            ),

                            ///Cancel Button
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  buildingNameContoller.clear();
                                });
                                Navigator.pop(context);
                              },
                              child: Container(
                                  height: height/18.475,
                                  width: width/12.8,
                                  decoration: BoxDecoration(
                                    color: Color(0xff00A0E3),
                                    borderRadius:
                                    BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: KText(
                                        text: 'Cancel',
                                        style: textStyle(TextColor: Colors.white,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: width/76.8,
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              );
            }
        );
      },
    );
  }

  addItemPopUp() {

    double height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (ctx) {
        return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.transparent,
                content: Container(
                  width:width/2.56,
                  height:height/2.956,
                  // margin: EdgeInsets.symmetric(horizontal: width/68.3, vertical: height/32.55),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(1, 2),
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      SizedBox(
                        width:width/1.70666,
                        height: height/9.2375,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: width/68.3, vertical: height/81.375),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  KText(
                                      text: "Add Item",
                                      style:  textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                  ),
                                  SizedBox(width: width/5.12,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                          height: height/14.78,
                          width: width/5.12,
                          margin: EdgeInsets.only(bottom: height/73.9),
                          decoration: BoxDecoration(
                              color: const Color(
                                  0xffDDDEEE),
                              borderRadius:
                              BorderRadius.circular(
                                  3)),
                          child:
                          TextFormField(
                            /*inputFormatters: [
                              FilteringTextInputFormatter
                                  .allow(RegExp(
                                  "[a-zA-Z ]")),
                            ],*/
                            controller:buildingNameContoller,
                            decoration: InputDecoration(
                              border:
                              InputBorder
                                  .none,
                              contentPadding: EdgeInsets.only(
                                  bottom:
                                  height/73.9,
                                  top: height/369.5,
                                  left:
                                  width/153.6),
                              counterText:
                              "",
                            ),
                          )),


                      Padding(
                        padding:  EdgeInsets.only(top:height/30.39),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [

                            SizedBox(
                              width: width/5.2925,
                            ),

                            /// Save Button
                            GestureDetector(
                              onTap:() async {
                                FirebaseFirestore.instance.collection("Building").doc().set({
                                  "name":buildingNameContoller.text,
                                  "date":DateFormat("hh:mm a").format(DateTime.now()),
                                  "available":false,
                                  "timestamp":DateTime.now().millisecondsSinceEpoch
                                });
                                setState(() {
                                  buildingNameContoller.clear();
                                });
                                Navigator.pop(context);

                              },
                              child: Container(
                                  height: height/18.475,
                                  width: width/12.8,
                                  decoration: BoxDecoration(
                                    color: Color(0xffD60A0B),
                                    borderRadius:
                                    BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: KText(
                                        text: 'Save',
                                        style: textStyle(TextColor: Colors.white,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: width/76.8,
                            ),

                            ///Cancel Button
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  buildingNameContoller.clear();
                                });
                                Navigator.pop(context);
                              },
                              child: Container(
                                  height: height/18.475,
                                  width: width/12.8,
                                  decoration: BoxDecoration(
                                    color: Color(0xff00A0E3),
                                    borderRadius:
                                    BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: KText(
                                        text: 'Cancel',
                                        style: textStyle(TextColor: Colors.white,TextSize: TextSizeMedium,fontWeight: fontWeightmedium)
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: width/76.8,
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              );
            }
        );
      },
    );
  }


  Popupmenu(BuildContext context, key, size,DataName,DocumentID) async {
    print("Popupmenu open-----------------------------------------------------------");
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final render = key.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      color: Color(0xffFFFFFF),
      elevation: 0,
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: datalist
          .map((item) => PopupMenuItem<String>(
        enabled: true,
        onTap: () async {
          if (item == "Edit") {
            editPopUp(DocumentID,DataName);
          }
          else if (item == "Delete") {
            CoolAlert.show(
                context: context,
                type: CoolAlertType.info,
                text: "${DataName} will be deleted",
                title:
                "Delete this Record?",
                width: size.width *
                    0.4,
                backgroundColor: HeadingTextColor.withOpacity(0.7),
                showCancelBtn: true,
                cancelBtnText: 'Cancel',
                cancelBtnTextStyle: textStyle(TextColor: Colors.black,TextSize: TextSizeMedium,fontWeight: fontWeightmedium),
                onConfirmBtnTap: () async {
                  FirebaseFirestore.instance.collection("Building").doc(DocumentID).delete();
                });
          }
        },
        value: item,
        child: Container(
          height: height / 18.475,
          decoration: BoxDecoration(
              color: item == "Edit"
                  ? Color(0xff5B93FF).withOpacity(0.6)
                  : Color(0xffE71D36).withOpacity(0.6),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item == "Edit"
                  ? Icon(
                Icons.edit,
                color: Colors.white,
                size: 18,
              )
                  : Icon(
                Icons.delete,
                color: Colors.white,
                size: 18,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ))
          .toList(),
    );
  }
}

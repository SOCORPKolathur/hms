import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const_File.dart';

class Complaint_Screen extends StatefulWidget {
  const Complaint_Screen({super.key});

  @override
  State<Complaint_Screen> createState() => _Complaint_ScreenState();
}

class _Complaint_ScreenState extends State<Complaint_Screen> {


  @override
  void initState() {
    statusCountfunc();
    // TODO: implement initState
    super.initState();
  }

  int TodoCount=0;
  int OnProcessCount=0;
  int CompletedCount=0;

  statusCountfunc()async{
    setState(() {
       TodoCount=0;
       OnProcessCount=0;
       CompletedCount=0;
    });

    var countData=await FirebaseFirestore.instance.collection("ComplaintList").orderBy("timestamp").get();

    for(int i=0;i<countData.docs.length;i++){

      if(countData.docs[i]['ComplaintStatus']=="ToDo"){
        setState(() {
          TodoCount=TodoCount+1;
        });
      }
      if(countData.docs[i]['ComplaintStatus']=="OnProcess"){
        setState(() {
          OnProcessCount=OnProcessCount+1;
        });
      }
      if(countData.docs[i]['ComplaintStatus']=="Completed"){
        setState(() {
          CompletedCount=CompletedCount+1;
        });
      }
    }


  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Complaint Lists",
                          style: textStyle(
                              TextColor: HostelTextColor,
                              TextSize: TextSizeEXLarge,
                              fontWeight: fontWeightmediumextra),
                        ),
                        Text(
                          "Drag and Drop Complaints",
                          style: textStyle(
                              TextColor: HostelTextColor,
                              TextSize: TextSizeSmall,
                              fontWeight: fontWeightmediumextra),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 610),
                      child: Card(
                        elevation: 1,
                        color: UsersearchConColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          height: 38,
                          width: 300,
                          decoration: BoxDecoration(
                              color: UsersearchConColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextField(
                            style: textStyle(
                                fontWeight: fontWeightlight,
                                TextSize: TextSizeSmall,
                                TextColor: searchTextColor),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8, top: 6),
                              prefixIcon: Icon(
                                Icons.search,
                                color: searchTextColor,
                              ),
                              border: InputBorder.none,
                              hintText: "Search here",
                              hintStyle: textStyle(
                                  fontWeight: fontWeightlight,
                                  TextSize: TextSizeSmall,
                                  TextColor: searchTextColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 20),
              child: Divider(
                thickness: 0.6,
              ),
            ),

        SizedBox(
          height: 600,
          width: 1300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              /// todo Container
              Material(
                elevation: 3,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(3),
                  topLeft: Radius.circular(3),
                ),
                color: Colors.white,
                child: DragTarget(
                  builder: (context, candidateData, rejectedData) {
                    return Container(
                      width: 330,
                      height: 480,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            topLeft: Radius.circular(3),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: TodoContainerColor,
                            ),
                            child:  Row(
                              children: [
                                SizedBox(
                                  width:70,
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 15),
                                    child: Text(
                                      "To do",
                                      style: textStyle(
                                          TextColor: TextColorwhite,
                                          TextSize: TextSizeMedium,
                                          fontWeight: fontWeightmediumextra),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(
                                    child: Text(
                                      TodoCount.toString(),
                                      style: textStyle(
                                          TextColor: TextColorwhite,
                                          TextSize: TextSizeMedium,
                                          fontWeight: fontWeightmediumextra),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:180),
                                  child: Icon(Icons.more_horiz_outlined,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:20,bottom:20),
                            child: SizedBox(
                              height: 380,
                              child:
                              StreamBuilder(
                                stream:FirebaseFirestore.instance.collection("ComplaintList").orderBy("timestamp").snapshots() ,
                                builder: (context, snapshot) {
                                  if(snapshot.hasData==null){
                                    return const Center(child: CircularProgressIndicator(),);
                                  }
                                  if(!snapshot.hasData){
                                    return const Center(child: CircularProgressIndicator(),);
                                  }
                                  return  ListView.builder(
                                    physics: ScrollPhysics(),
                                    itemCount: snapshot.data!.docs.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {

                                      var Data=snapshot.data!.docs[index];

                                      if(Data['ComplaintStatus']=="ToDo"){
                                        return
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 15),
                                            child: Draggable(
                                              data: "ToDo",
                                              feedback:AlertDialog(
                                                backgroundColor: Colors.transparent,
                                                elevation: 0,
                                                content: Container(
                                                  width: 115,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(3),
                                                      border: Border.all(
                                                          width: 0.3,
                                                          color: Colors.grey.shade600
                                                      )
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(2),
                                                            border: Border(
                                                                bottom: BorderSide(
                                                                    color: Colors.grey.shade400,
                                                                    width: 0.3
                                                                )
                                                            )
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(bottom: 8),
                                                                child: Text(
                                                                  Data['ComplaintTittle'].toString(),
                                                                  style: textStyle(
                                                                      TextColor: TodoTextColor,
                                                                      TextSize: TextSizeMedium,
                                                                      fontWeight: fontWeightmediumextraPlus),
                                                                ),
                                                              ),
                                                              Container(
                                                                alignment: Alignment.centerLeft,
                                                                child: Text(
                                                                  Data['ComplaintDes'].toString(),
                                                                  style: textStyle(
                                                                    TextColor: DateTimeColor,
                                                                    TextSize: TextSizeextraSmall,
                                                                    fontWeight: fontWeightmediumextra,

                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 59,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white70,
                                                          borderRadius: BorderRadius.circular(2),

                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                              child: Column(
                                                                children: [
                                                                  Text(
                                                                    "Date & Time",
                                                                    style: textStyle(
                                                                      TextColor: DateTimeColor,
                                                                      TextSize: TextSizeextraSmall,
                                                                      fontWeight: fontWeightmediumextra,

                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    Data['ComplaintDateTime'].toString(),
                                                                    style: textStyle(
                                                                      TextColor: DTDataColor,
                                                                      TextSize: TextSizeSmall,
                                                                      fontWeight: fontWeightmediumextra,

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
                                              onDragCompleted: (){
                                                complaintStatsuUpdatfunc(
                                                    DocuemtnID: Data.id,
                                                    UpdateStatus: "OnProcess"
                                                );
                                                print("Completed++++++++++++++++++++++++ Sucessssssssssss");
                                              },
                                              childWhenDragging:Container(
                                                width: 115,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(3),
                                                    border: Border.all(
                                                        width: 0.3,
                                                        color: Colors.grey.shade600
                                                    )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors.grey.shade400,
                                                                  width: 0.3
                                                              )
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(bottom: 8),
                                                              child: Text(
                                                                Data['ComplaintTittle'].toString(),
                                                                style: textStyle(
                                                                    TextColor: TodoTextColor,
                                                                    TextSize: TextSizeMedium,
                                                                    fontWeight: fontWeightmediumextraPlus),
                                                              ),
                                                            ),
                                                            Container(
                                                              alignment: Alignment.centerLeft,
                                                              child: Text(
                                                                Data['ComplaintDes'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 59,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white70,
                                                        borderRadius: BorderRadius.circular(2),

                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Date & Time",
                                                                  style: textStyle(
                                                                    TextColor: DateTimeColor,
                                                                    TextSize: TextSizeextraSmall,
                                                                    fontWeight: fontWeightmediumextra,

                                                                  ),
                                                                ),
                                                                Text(
                                                                  Data['ComplaintDateTime'].toString(),
                                                                  style: textStyle(
                                                                    TextColor: DTDataColor,
                                                                    TextSize: TextSizeSmall,
                                                                    fontWeight: fontWeightmediumextra,

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
                                              child: Container(
                                                width: 115,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(3),
                                                    border: Border.all(
                                                        width: 0.3,
                                                        color: Colors.grey.shade600
                                                    )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors.grey.shade400,
                                                                  width: 0.3
                                                              )
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(bottom: 8),
                                                              child: Text(
                                                                Data['ComplaintTittle'].toString(),
                                                                style: textStyle(
                                                                    TextColor: TodoTextColor,
                                                                    TextSize: TextSizeMedium,
                                                                    fontWeight: fontWeightmediumextraPlus),
                                                              ),
                                                            ),
                                                            Container(
                                                              alignment: Alignment.centerLeft,
                                                              child: Text(
                                                                Data['ComplaintDes'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 59,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white70,
                                                        borderRadius: BorderRadius.circular(2),

                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Date & Time",
                                                                  style: textStyle(
                                                                    TextColor: DateTimeColor,
                                                                    TextSize: TextSizeextraSmall,
                                                                    fontWeight: fontWeightmediumextra,

                                                                  ),
                                                                ),
                                                                Text(
                                                                  Data['ComplaintDateTime'].toString(),
                                                                  style: textStyle(
                                                                    TextColor: DTDataColor,
                                                                    TextSize: TextSizeSmall,
                                                                    fontWeight: fontWeightmediumextra,

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
                                          );
                                      }
                                      return const SizedBox();
                                    },);


                                },),

                            ),
                          )

                        ],
                      ),
                    );
                  },
                  onAcceptWithDetails: (data){
                  },
                  onWillAccept: (data) {

                    return true;
                  },
                  onAccept: (data) {

                  },

                ),
              ),

              /// on processs
              Material(
                elevation: 0,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(3),
                  topLeft: Radius.circular(3),
                ),
                color: Colors.white,
                child:
                DragTarget(
                  builder: (context, candidateData, rejectedData) {
                    return  Container(
                      width: 330,
                      height: 480,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            topLeft: Radius.circular(3),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: OnProccessContainerColor,
                            ),
                            child:  Row(
                              children: [
                                SizedBox(
                                  width:115,
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 15),
                                    child: Text(
                                      "On Process",
                                      style: textStyle(
                                          TextColor: TextColorwhite,
                                          TextSize: TextSizeMedium,
                                          fontWeight: fontWeightmediumextra),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(
                                    child: Text(
                                      OnProcessCount.toString(),
                                      style: textStyle(
                                          TextColor: TextColorwhite,
                                          TextSize: TextSizeMedium,
                                          fontWeight: fontWeightmediumextra),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:140),
                                  child: Icon(Icons.more_horiz_outlined,color: Colors.white,),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:20,bottom:20),
                            child: SizedBox(
                              height: 380,
                              child:
                              StreamBuilder(
                                stream:FirebaseFirestore.instance.collection("ComplaintList").orderBy("timestamp").snapshots() ,
                                builder: (context, snapshot) {
                                  if(snapshot.hasData==null){
                                    return const Center(child: CircularProgressIndicator(),);
                                  }
                                  if(!snapshot.hasData){
                                    return const Center(child: CircularProgressIndicator(),);
                                  }
                                  return  ListView.builder(
                                    physics: ScrollPhysics(),
                                    itemCount: snapshot.data!.docs.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {

                                      var Data=snapshot.data!.docs[index];

                                      if(Data['ComplaintStatus']=="OnProcess"){
                                        return Padding(
                                          padding: const EdgeInsets.only(bottom: 15),
                                          child: Draggable(
                                            data: "OnProcess",
                                            feedback:AlertDialog(
                                              backgroundColor: Colors.transparent,
                                              elevation: 0,
                                              content: Container(
                                                width: 115,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(3),
                                                    border: Border.all(
                                                        width: 0.3,
                                                        color: Colors.grey.shade600
                                                    )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors.grey.shade400,
                                                                  width: 0.3
                                                              )
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(bottom: 8),
                                                              child: Text(
                                                                Data['ComplaintTittle'].toString(),
                                                                style: textStyle(
                                                                    TextColor: TodoTextColor,
                                                                    TextSize: TextSizeMedium,
                                                                    fontWeight: fontWeightmediumextraPlus),
                                                              ),
                                                            ),
                                                            Container(
                                                              alignment: Alignment.centerLeft,
                                                              child: Text(
                                                                Data['ComplaintDes'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 59,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white70,
                                                        borderRadius: BorderRadius.circular(2),

                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Date & Time",
                                                                  style: textStyle(
                                                                    TextColor: DateTimeColor,
                                                                    TextSize: TextSizeextraSmall,
                                                                    fontWeight: fontWeightmediumextra,

                                                                  ),
                                                                ),
                                                                Text(
                                                                  Data['ComplaintDateTime'].toString(),
                                                                  style: textStyle(
                                                                    TextColor: DTDataColor,
                                                                    TextSize: TextSizeSmall,
                                                                    fontWeight: fontWeightmediumextra,

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
                                            onDragCompleted: (){

                                              complaintStatsuUpdatfunc(
                                                  DocuemtnID: Data.id,
                                                  UpdateStatus: "Completed"
                                              );
                                              print("Completed++++++++++++++++++++++++ Sucessssssssssss");
                                            },
                                            childWhenDragging:Container(
                                              width: 115,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(3),
                                                  border: Border.all(
                                                      width: 0.3,
                                                      color: Colors.grey.shade600
                                                  )
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(2),
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors.grey.shade400,
                                                                width: 0.3
                                                            )
                                                        )
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 8),
                                                            child: Text(
                                                              Data['ComplaintTittle'].toString(),
                                                              style: textStyle(
                                                                  TextColor: TodoTextColor,
                                                                  TextSize: TextSizeMedium,
                                                                  fontWeight: fontWeightmediumextraPlus),
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment.centerLeft,
                                                            child: Text(
                                                              Data['ComplaintDes'].toString(),
                                                              style: textStyle(
                                                                TextColor: DateTimeColor,
                                                                TextSize: TextSizeextraSmall,
                                                                fontWeight: fontWeightmediumextra,

                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 59,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white70,
                                                      borderRadius: BorderRadius.circular(2),

                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                "Date & Time",
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                              Text(
                                                                Data['ComplaintDateTime'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DTDataColor,
                                                                  TextSize: TextSizeSmall,
                                                                  fontWeight: fontWeightmediumextra,

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
                                            child: Container(
                                              width: 115,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(3),
                                                  border: Border.all(
                                                      width: 0.3,
                                                      color: Colors.grey.shade600
                                                  )
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(2),
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors.grey.shade400,
                                                                width: 0.3
                                                            )
                                                        )
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 8),
                                                            child: Text(
                                                              Data['ComplaintTittle'].toString(),
                                                              style: textStyle(
                                                                  TextColor: TodoTextColor,
                                                                  TextSize: TextSizeMedium,
                                                                  fontWeight: fontWeightmediumextraPlus),
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment.centerLeft,
                                                            child: Text(
                                                              Data['ComplaintDes'].toString(),
                                                              style: textStyle(
                                                                TextColor: DateTimeColor,
                                                                TextSize: TextSizeextraSmall,
                                                                fontWeight: fontWeightmediumextra,

                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 59,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white70,
                                                      borderRadius: BorderRadius.circular(2),

                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                "Date & Time",
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                              Text(
                                                                Data['ComplaintDateTime'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DTDataColor,
                                                                  TextSize: TextSizeSmall,
                                                                  fontWeight: fontWeightmediumextra,

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
                                        );
                                      }
                                      return const SizedBox();
                                    },);


                                },),

                            ),
                          )

                        ],
                      ),
                    );
                  },
                  onAcceptWithDetails: (data){
                  },
                  onWillAccept: (data) {

                    return true;
                  },
                  onAccept: (data) {

                  },

                ),
              ),

              /// completed
              Material(
                elevation: 0,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(3),
                  topLeft: Radius.circular(3),
                ),
                color: Colors.white,
                child: DragTarget(

                  builder: (context, candidateData, rejectedData) {
                    return  Container(
                      width: 330,
                      height: 480,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            topLeft: Radius.circular(3),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: CompletedContainerColor,
                            ),
                            child:  Row(
                              children: [
                                SizedBox(
                                  width:115,
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Completed",
                                      style: textStyle(
                                          TextColor: TextColorwhite,
                                          TextSize: TextSizeMedium,
                                          fontWeight: fontWeightmediumextra),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(
                                    child: Text(
                                      CompletedCount.toString(),
                                      style: textStyle(
                                          TextColor: TextColorwhite,
                                          TextSize: TextSizeMedium,
                                          fontWeight: fontWeightmediumextra),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:140),
                                  child: Icon(Icons.more_horiz_outlined,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:20,bottom:20),
                            child: SizedBox(
                              height: 380,
                              child:
                              StreamBuilder(
                                stream:FirebaseFirestore.instance.collection("ComplaintList").orderBy("timestamp").snapshots() ,
                                builder: (context, snapshot) {
                                  if(snapshot.hasData==null){
                                    return const Center(child: CircularProgressIndicator(),);
                                  }
                                  if(!snapshot.hasData){
                                    return const Center(child: CircularProgressIndicator(),);
                                  }
                                  return  ListView.builder(
                                    physics: ScrollPhysics(),
                                    itemCount: snapshot.data!.docs.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {

                                      var Data=snapshot.data!.docs[index];

                                      if(Data['ComplaintStatus']=="Completed"){
                                        return Padding(
                                          padding: const EdgeInsets.only(bottom: 15),
                                          child: Draggable(
                                            data: "Completed",
                                            feedback:
                                            AlertDialog(
                                              backgroundColor: Colors.transparent,
                                              elevation: 0,
                                              content: Container(
                                                width: 115,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(3),
                                                    border: Border.all(
                                                        width: 0.3,
                                                        color: Colors.grey.shade600
                                                    )
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors.grey.shade400,
                                                                  width: 0.3
                                                              )
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(bottom: 8),
                                                              child: Text(
                                                                Data['ComplaintTittle'].toString(),
                                                                style: textStyle(
                                                                    TextColor: TodoTextColor,
                                                                    TextSize: TextSizeMedium,
                                                                    fontWeight: fontWeightmediumextraPlus),
                                                              ),
                                                            ),
                                                            Container(
                                                              alignment: Alignment.centerLeft,
                                                              child: Text(
                                                                Data['ComplaintDes'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 59,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white70,
                                                        borderRadius: BorderRadius.circular(2),

                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Date & Time",
                                                                  style: textStyle(
                                                                    TextColor: DateTimeColor,
                                                                    TextSize: TextSizeextraSmall,
                                                                    fontWeight: fontWeightmediumextra,

                                                                  ),
                                                                ),
                                                                Text(
                                                                  Data['ComplaintDateTime'].toString(),
                                                                  style: textStyle(
                                                                    TextColor: DTDataColor,
                                                                    TextSize: TextSizeSmall,
                                                                    fontWeight: fontWeightmediumextra,

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
                                            onDragCompleted: (){

                                              complaintStatsuUpdatfunc(
                                                  DocuemtnID: Data.id,
                                                  UpdateStatus: "ToDo"
                                              );
                                              print("Completed++++++++++++++++++++++++ Sucessssssssssss");
                                            },
                                            childWhenDragging:Container(
                                              width: 115,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(3),
                                                  border: Border.all(
                                                      width: 0.3,
                                                      color: Colors.grey.shade600
                                                  )
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(2),
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors.grey.shade400,
                                                                width: 0.3
                                                            )
                                                        )
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 8),
                                                            child: Text(
                                                              Data['ComplaintTittle'].toString(),
                                                              style: textStyle(
                                                                  TextColor: TodoTextColor,
                                                                  TextSize: TextSizeMedium,
                                                                  fontWeight: fontWeightmediumextraPlus),
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment.centerLeft,
                                                            child: Text(
                                                              Data['ComplaintDes'].toString(),
                                                              style: textStyle(
                                                                TextColor: DateTimeColor,
                                                                TextSize: TextSizeextraSmall,
                                                                fontWeight: fontWeightmediumextra,

                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 59,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white70,
                                                      borderRadius: BorderRadius.circular(2),

                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                "Date & Time",
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                              Text(
                                                                Data['ComplaintDateTime'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DTDataColor,
                                                                  TextSize: TextSizeSmall,
                                                                  fontWeight: fontWeightmediumextra,

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
                                            child: Container(
                                              width: 115,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(3),
                                                  border: Border.all(
                                                      width: 0.3,
                                                      color: Colors.grey.shade600
                                                  )
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(2),
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors.grey.shade400,
                                                                width: 0.3
                                                            )
                                                        )
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 8),
                                                            child: Text(
                                                              Data['ComplaintTittle'].toString(),
                                                              style: textStyle(
                                                                  TextColor: TodoTextColor,
                                                                  TextSize: TextSizeMedium,
                                                                  fontWeight: fontWeightmediumextraPlus),
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment.centerLeft,
                                                            child: Text(
                                                              Data['ComplaintDes'].toString(),
                                                              style: textStyle(
                                                                TextColor: DateTimeColor,
                                                                TextSize: TextSizeextraSmall,
                                                                fontWeight: fontWeightmediumextra,

                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 59,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white70,
                                                      borderRadius: BorderRadius.circular(2),

                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                "Date & Time",
                                                                style: textStyle(
                                                                  TextColor: DateTimeColor,
                                                                  TextSize: TextSizeextraSmall,
                                                                  fontWeight: fontWeightmediumextra,

                                                                ),
                                                              ),
                                                              Text(
                                                                Data['ComplaintDateTime'].toString(),
                                                                style: textStyle(
                                                                  TextColor: DTDataColor,
                                                                  TextSize: TextSizeSmall,
                                                                  fontWeight: fontWeightmediumextra,

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
                                        );
                                      }
                                      return const SizedBox();
                                    },);


                                },),

                            ),
                          )

                        ],
                      ),
                    );
                  },
                  onAcceptWithDetails: (data){

                  },
                  onWillAccept: (data) {
                    return true;
                  },
                  onAccept: (data) {
                  },

                ),
              ),


            ],
          ),
        ),




          ],
        ),
      ),
    );
  }

  complaintStatsuUpdatfunc({DocuemtnID,UpdateStatus}){
    FirebaseFirestore.instance.collection("ComplaintList").doc(DocuemtnID).update({
      "ComplaintStatus":UpdateStatus
    });
    statusCountfunc();
  }


}

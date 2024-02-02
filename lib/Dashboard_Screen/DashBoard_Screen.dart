
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cr_calendar/cr_calendar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hms/Dashboard_Screen/widgets/card_clipper.dart';
import 'package:hms/Dashboard_Screen/widgets/dashboard_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import '../Barchart(DashBoard)/Barchat_dashBoard.dart';
import '../Const_File.dart';
import '../Testing_screen.dart';

class DashBoard_Scren extends StatefulWidget {
  String ?name;
   DashBoard_Scren({this.name});

  @override
  State<DashBoard_Scren> createState() => _DashBoard_ScrenState();
}

class _DashBoard_ScrenState extends State<DashBoard_Scren> {

  List<_SalesData> data = [
    _SalesData('1', 35),
    _SalesData('2', 28),
    _SalesData('3', 34),
    _SalesData('4', 32),
    _SalesData('5', 40)
  ];
  CrCalendarController _controller = CrCalendarController();

  String Username="";
  String Useremail="";

  int hostellerCount=0;
  int buildingCount=0;
  int roomCount=0;

  fetchdata()async{
    setState(() {
      hostellerCount=0;
      buildingCount=0;
      roomCount=0;
    });
    var HostelCopunt =await FirebaseFirestore.instance.collection("HostelUsers").get();
    var RoomsCount =await FirebaseFirestore.instance.collection("Rooms").get();
    var BuldingCount =await FirebaseFirestore.instance.collection("Building").get();
    setState(() {
      hostellerCount=HostelCopunt.docs.length;
      roomCount=RoomsCount.docs.length;
      buildingCount=BuldingCount.docs.length;
    });

  }

  @override
  void initState() {
    fetchdata();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double baseWidth = 1861;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 600,
        width:1300,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),

              ///top container
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Row(

                    children: [

                  /*    ///serach textfield
                      Card(
                        elevation: 2,
                        color: const Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Container(
                          height: 38,
                          width: 300,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(100)),
                          child: TextField(
                            style: textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeMedium,TextColor: searchTextColor),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left:8,top: 6),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Color(0xff000000),
                              ),
                              border: InputBorder.none,
                              hintText: "Search here",
                              hintStyle:
                              textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeMedium,TextColor: searchTextColor),
                            ),
                          ),
                        ),
                      ),*/

                      const SizedBox(width: 870,),
                      SizedBox(
                        height:60,
                        width:240,

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width:150,
                                  child: Text("HMS Admin", style:
                                  textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeMedium,TextColor: HeadingTextColor),),
                                ),
                                SizedBox(
                                  width:150,
                                  child: Text("admin@gmail.com", style:
                                  textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeSmall,TextColor: SubheadingTextColor),),
                                ),

                              ],
                            ),
                            Container(
                              height:50,
                              width:50,
                              decoration: BoxDecoration(
                                  color:Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            )
                          ],
                        ),

                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Hello ${"Admin"}",
                    style:
                    textStyle(TextColor: HeadingTextColor,TextSize: TextSizeLarge,fontWeight: fontWeightmediumextra)
                  ),
                ],
              ),

              ///Cards containers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                  ClipPath(
                    clipper: CardClipper(drawLeftArc: false,drawRightArc: true),
                    child: Container(
                      child: DashboardCard(count:buildingCount ,cardHeading: 'Buildings',cardImage: Hostelimg,cardColor:BuildingsCardColor,onPressed: (){},),
                    ),
                  ),
                  ClipPath(
                    clipper: CardClipper(drawLeftArc: false,drawRightArc: true),
                    child: Container(
                      child: DashboardCard(count:buildingCount ,cardHeading: 'Rooms',cardImage: LivingRoomimg,cardColor:RoomsCard,onPressed: (){},),
                    ),
                  ),
                  ClipPath(
                    clipper: CardClipper(drawLeftArc: false,drawRightArc: true),
                    child: Container(
                      child: DashboardCard(count:buildingCount ,cardHeading: 'Allocated Beds',cardImage: Bedtimg,cardColor:AllocatedBedCardColor,onPressed: (){},),
                    ),
                  ),
                  ClipPath(
                    clipper: CardClipper(drawLeftArc: false,drawRightArc: true),
                    child: Container(
                      child: DashboardCard(count:buildingCount ,cardHeading: 'hostelers',cardImage: Hostelers,cardColor:HostlersCardColor,onPressed: (){},),
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),

                  SizedBox(
                      height: 300,
                      width: 700,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 35,
                                width:110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.filter_list_rounded),
                                    const SizedBox(width: 5,),
                                    Text("Filters", style:
                                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)

                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width:10),

                              Container(   height: 35,
                                width:110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xffFAD85D),

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.download_outlined, color: Color(0xffFFFFFF),),
                                    const SizedBox(width: 5,),
                                    Text("Downloads", style:
                                    textStyle(
                                        fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: TextColorwhite
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                width: 580,
                                height: 250,
                                child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(

                                    ),
                                    // Chart title
                                    title: ChartTitle(text: ''),

                                    // Enable legend
                                    legend: const Legend(isVisible: true),
                                    // Enable tooltip
                                    tooltipBehavior: TooltipBehavior(enable: true),
                                    series: <ChartSeries<_SalesData, String>>[
                                      SplineSeries<_SalesData, String>(
                                        color: Color(0xff845ED7),
                                          dataSource: data,
                                          xValueMapper: (_SalesData sales, _) =>
                                          sales.year,
                                          yValueMapper: (_SalesData sales, _) =>
                                          sales.sales,
                                          name: '',
                                          width: 5,
                                          splineType: SplineType.clamped,
                                          // Enable data label
                                          dataLabelSettings:

                                          const DataLabelSettings(isVisible: true))
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 500),
                                child: Image.asset(dollimg,width:220,height:250,fit: BoxFit.contain,),
                              ),
                            ],
                          ),
                        ],
                      )),

                  const SizedBox(
                    width: 40,
                  ),

                  /// Calender
                  SizedBox(
                    width:350,
                    height: 350,
                    child:
                    Center(child: CalenderPage())
                   /* CrCalendar(
                      initialDate: DateTime.now(),
                      controller: _controller,
                    ),*/
                  ),

                ],
              ),


              const SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(25),
                    elevation: 18,
                    shadowColor: Colors.black12,
                    child: SizedBox(
                        height:250,
                        width:350,
                        child: Barchart_DashBoard()),
                  ),

                  Material(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(25),
                    elevation: 18,
                    shadowColor: Colors.black12,
                    child: Container(
                      height:250,
                      width:680,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(25)
                      ),

                      child: SingleChildScrollView(
                        physics: const ScrollPhysics(),
                        child: Column(
                          children: [
                            const SizedBox(height:10),
                            SizedBox(
                              height:60,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:  const EdgeInsets.only(right:250,left: 20),
                                    child:
                                    Text("Client Details", style:
                                   textStyle(
                                     fontWeight: fontWeightmediumextra,TextSize: TextSizeLarge,TextColor: HeadingTextColor

                                   )),
                                  ),
                                  Container(
                                    height: 40,
                                    width:120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.black)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.filter_list_rounded),
                                        const SizedBox(width: 5,),
                                        Text("Filters", style:
                                        textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: HeadingTextColor)

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width:10),

                                  Container(
                                    height: 40,
                                    width:120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xffFAD85D),

                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.download_outlined, color: Color(0xffFFFFFF),),
                                        const SizedBox(width: 5,),
                                        Text("Downloads", style:
                                        textStyle(
                                            fontWeight: fontWeightmediumextra,TextSize: TextSizeSmall,TextColor: TextColorwhite
                                        )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height:40,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Color(0xff9F9F9F))
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(

                                    width: 100,
                                    child: Text("Id", style:
                                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: HeadingTextColor)),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width:150,

                                    child: Text("Customer", style:
                                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: HeadingTextColor),),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width:100,
                                    child: Text("Date", style:
                                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: HeadingTextColor),),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width:160,
                                    child: Text("Invoiced Amount", style:
                                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: HeadingTextColor),),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width:100,

                                    child: Text("Status", style:
                                    textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: HeadingTextColor)),
                                  ),
                                ],
                              ),
                            ),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return   Container(
                                  height:40.8,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(color: Color(0xff9F9F9F))
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Text("RZ17308", style:
                                        textStyle(TextSize: TextSizeSmall,TextColor: HeadingTextColor)),
                                      ),
                                      const SizedBox(width: 10,),
                                      SizedBox(
                                        width:150,

                                        child: Text("Pranjalpets", style:
                                        textStyle(TextSize: TextSizeSmall,TextColor: HeadingTextColor),),
                                      ),
                                      const SizedBox(width: 10,),
                                      SizedBox(
                                        width:100,
                                        child: Text("20/11/2023", style:
                                        textStyle(TextSize: TextSizeSmall,TextColor: HeadingTextColor)),
                                      ),
                                      const SizedBox(width: 10,),
                                      SizedBox(
                                        width:160,
                                        child: Text("54 000", style:
                                        textStyle(TextSize: TextSizeSmall,TextColor: HeadingTextColor)),
                                      ),
                                      const SizedBox(width: 10,),
                                      SizedBox(
                                        width:100,

                                        child: Text("Paid", style: textStyle(TextSize: TextSizeSmall,TextColor: ShippedColor)
                                       ),
                                      ),
                                    ],
                                  ),
                                );
                              },),
                            const SizedBox(height:20),

                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),

              const SizedBox(height:20),
            ],
          ),
        ),
      ),
    );
  }
}



class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

// Stack(
// children: [
//
// Padding(
// padding: const EdgeInsets.only(top: 15),
// child: Card(
// elevation: 10,
// color: const Color(0xffFAD85D),
// shape: BeveledRectangleBorder(
// borderRadius: BorderRadius.circular(15),
// ),
// child: Container(
// height: 130,
// width: 260,
// decoration: BoxDecoration(
// color: const Color(0xffFAD85D),
// borderRadius: BorderRadius.circular(15)),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// SizedBox(
// width: 230,
// height:100,
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Rooms",
// style:
// textStyle(
// TextColor: HeadingTextColor,
// TextSize: TextSizeSmall,
// fontWeight: fontWeightmediumextra
// ),
// ),
// Text(
// roomCount.toString(),
// style:
// textStyle(
// TextColor: HeadingTextColor,
// TextSize: cardCounterTextSize,
// fontWeight: fontWeightmediumextra
// ),
// ),
// InkWell(
//
// onTap: (){},
// child: Text(
// "View Entire List",
// style:   textStyle(
// TextColor: HeadingTextColor,
// TextSize: TextSizeextraSmall,
// fontWeight: fontWeightmediumextra
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 160),
// child: SizedBox(
// width: 100,
// child: Image.asset(
// LivingRoomimg,
// height: 150,
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 10,),
// child: SizedBox(
// width: 250,
// child: Image.asset(
// Groupimg,
// height: 180,
// width: 200,
// ),
// ),
// ),
//
// ],
// ),
//
// Stack(
// alignment: Alignment.topRight,
// children: [
//
// Padding(
// padding: const EdgeInsets.only(top: 15),
// child: Card(
// elevation: 10,
// color: const Color(0xffF2A0FF),
// shape: BeveledRectangleBorder(
// borderRadius: BorderRadius.circular(15),
// ),
// child: Container(
// height: 130,
// width: 260,
// decoration: BoxDecoration(
// color: const Color(0xffF2A0FF),
// borderRadius: BorderRadius.circular(15)),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// SizedBox(
// width: 230,
// height:100,
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Allocated Beds",
// style:
// textStyle(
// TextColor: HeadingTextColor,
// TextSize: TextSizeSmall,
// fontWeight: fontWeightmediumextra
// ),
// ),
// Text(
// "04",
// style:
// textStyle(
// TextColor: HeadingTextColor,
// TextSize: cardCounterTextSize,
// fontWeight: fontWeightmediumextra
// ),
// ),
// InkWell(
//
// onTap: (){},
// child: Text(
// "View Entire List",
// style:   textStyle(
// TextColor: HeadingTextColor,
// TextSize: TextSizeextraSmall,
// fontWeight: fontWeightmediumextra
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// right: 15,
// ),
// child: SizedBox(
// width: 100,
// child: Image.asset(
// Bedtimg,
// height: 150,
// width: 100,
// fit: BoxFit.cover,
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 10,),
// child: SizedBox(
// width: 250,
// child: Image.asset(
// Groupimg,
// height: 180,
// width: 200,
// ),
// ),
// ),
// ],
// ),
//
// Stack(
// alignment: Alignment.topRight,
// children: [
//
//
// Padding(
// padding: const EdgeInsets.only(top: 15),
// child: Card(
// elevation: 10,
// color: const Color(0xffF2A0FF),
// shape: BeveledRectangleBorder(
// borderRadius: BorderRadius.circular(15),
// ),
// child: Container(
// height: 130,
// width: 260,
// decoration: BoxDecoration(
// color: const Color(0xffA0E8FF),
// borderRadius: BorderRadius.circular(15)),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// SizedBox(
// width: 230,
// height:100,
//
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Hostelers",
// style:
// textStyle(
// TextColor: HeadingTextColor,
// TextSize: TextSizeSmall,
// fontWeight: fontWeightmediumextra
// ),
// ),
// Text(
// hostellerCount.toString(),
// style:
// textStyle(
// TextColor: HeadingTextColor,
// TextSize: cardCounterTextSize,
// fontWeight: fontWeightmediumextra
// ),
// ),
// InkWell(
//
// onTap: (){},
// child: Text(
// "View Entire List",
// style:   textStyle(
// TextColor: HeadingTextColor,
// TextSize: TextSizeextraSmall,
// fontWeight: fontWeightmediumextra
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// Padding(
// padding:  const EdgeInsets.only(right:20),
// child: Image.asset(
// Hostelers,
// height: 150,
// width: 150,
// fit: BoxFit.cover,
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 10,),
// child: SizedBox(
// width: 250,
// child: Image.asset(
// Groupimg,
// height: 180,
// width: 200,
// ),
// ),
// ),
//
// ],
// ),
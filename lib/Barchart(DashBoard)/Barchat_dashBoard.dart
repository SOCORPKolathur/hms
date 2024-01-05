
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Barchart_DashBoard extends StatefulWidget {
  final Color leftBarColor = const Color(0xff53B175);
  final Color rightBarColor = Colors.redAccent;
  final Color avgColor = const Color(0xff00A0E3);
   Barchart_DashBoard({super.key});

  @override
  State<Barchart_DashBoard> createState() => _Barchart_DashBoardState();
}

class _Barchart_DashBoardState extends State<Barchart_DashBoard> {
  final double width = 12;

  late List<BarChartGroupData> rawBarGroups = [];
  List<BarChartGroupData> showingBarGroups = [];
  late List<String> titles;
  late List<String> bottomTitleHeaders;
  List bottomTitleHeaders1 = [];

  int touchedGroupIndex = -1;

  int totalStudents = 0;

  Future<List<BarChartGroupData>> getFeesDetails() async {

    var examsDoc = await FirebaseFirestore.instance.collection("ClassMaster").get();
    var studentsDoc = await FirebaseFirestore.instance.collection("Students").get();
    totalStudents = studentsDoc.docs.length;

    titles = [];
    for(int e = 0; e < examsDoc.docs.length; e++){
      var feesDoc = await FirebaseFirestore.instance.collection("ClassMaster").doc(examsDoc.docs[e].id).collection('Fees').get();
      for(int f = 0; f < feesDoc.docs.length; f++){
        if(feesDoc.docs[f].get("paytype").toString().toLowerCase() == 'custom'){
          if(!titles.contains(feesDoc.docs[f].get("feesname"))){
            titles.add(feesDoc.docs[f].get("feesname"));
          }
        }
      }
    }


    for(int t = 0; t < titles.length; t++){
      int x= t;
      double y1 = 0.0;
      double y2 = 0.0;
      for(int s = 0; s < studentsDoc.docs.length; s++) {
        //try{
        var feesDoc = await FirebaseFirestore.instance.collection("Students").doc(studentsDoc.docs[s].id).collection('Fees').where("feesname", isEqualTo: titles[t]).get();
        for(int f = 0; f < feesDoc.docs.length; f++){
          if(feesDoc.docs[f].get("status") == true){
            y1 = y1 + 1;
          }else{
            y2 = y2 + 1;
          }
          // if(feesDoc.docs[f].get("status") == false){
          //   y2 = y2 + 1;
          // }
        }
        // }catch (e){
        // }
      }
      setState(() {
        showingBarGroups.add(
            makeGroupData(x, y1, y2)
        );
      });
    }
    return showingBarGroups;
  }

  @override
  void initState() {

    super.initState();
  }
  final List<BarChartData> chartData = [
    BarChartData.randomColor("Mon", 1),
    BarChartData.randomColor("Tue", 3),
    BarChartData.randomColor("Wed", 4),
    BarChartData.randomColor("Thu", 3.7),
    BarChartData.randomColor("Fri", 2),
    BarChartData.randomColor("Sat", 1.5),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height:height/17.13157894736842,
            ),
            Expanded(
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                  ),
                  primaryYAxis: NumericAxis(
                    minimum: 0,
                    maximum: 10,
                    borderWidth: 0,
                    majorGridLines: const MajorGridLines(width: 0),
                    minorGridLines: const MinorGridLines(width: 0),
                  ),
                  series: <CartesianSeries>[
                    ColumnSeries<BarChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (BarChartData data, _) => data.x,
                      yValueMapper: (BarChartData data, _) => data.y,
                      sortingOrder: SortingOrder.ascending,
                      pointColorMapper: (BarChartData data, _) => data.color,
                      // Sorting based on the specified field
                      sortFieldValueMapper: (BarChartData data, _) => data.x,
                      width:0.15,
                    )
                  ]
              )
            ),
          ],
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {

    String text = value.toString();
    if (value == 0) {
      text = '0';
    } else if (value == (totalStudents/2).floorToDouble()) {
      text = ((totalStudents/2).floorToDouble()).toString();
    } else if (value == totalStudents) {
      text = totalStudents.toString();
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style:  GoogleFonts.montserrat(
        color: const Color(0xff7589a2),
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String textValue = '';
    List<String> values = titles[value.toInt()].split(" ");

    for(int i = 0; i < values.length; i++){
      if(i == 0){
        textValue += values[i];
      }else{
        textValue += "\n${values[i]}";
      }
    }

    final Widget text = SizedBox(
      width: 100,
      child: Text(
        textValue,
        textAlign: TextAlign.center,
        maxLines: null,
        style:  GoogleFonts.montserrat(
          color: const Color(0xff7589a2),
          fontWeight: FontWeight.w600,
          fontSize: width/136.6,
        ),
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width,
        ),
      ],
    );
  }
}

class BarChartData {
  BarChartData(this.x, this.y,this.color);
  final String x;
  final double? y;
  final Color color;
  factory BarChartData.randomColor(String x, double? y) {
    // Generate a random color
    final randomColor = Color(Random().nextInt(0xFFFFFFFF) | 0xFF000000);
    return BarChartData(x, y, randomColor);
  }
}

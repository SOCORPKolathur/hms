import 'package:cr_calendar/cr_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hms/Const_File.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
    // initialFocusDate: DateTime(2023, 5),
    // initialDateSelected: DateTime(2022, 3, 15),
    // endDateSelected: DateTime(2022, 3, 20),
  );

  final crcalender=CrCalendarController(
    onSwipe: (year, month) {
    },
  );

  EventList<Event> _markedDateMap = new
  EventList<Event>(
    events: {
    },
  );

  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];

  DateTime _currentDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime _currentDate2 = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  static Widget _eventIcon = new Container(
    width: 100,
    height:100,
  );


  List Presntlist=[];
  List Presntlist2=[];
  List Presntlist3=[];
  List absentlist=[];
  List absentlist2=[];
  List absentlist3=[];
  List allabsentdaylist=[];
  List allabsentdaylist2=[];
  List presentabsentdaylist=[];
  List Holidays1=[];
  List Holidays2=[];
  List Holidays3=[];
  List AllHolidays_List=[];
  List<MarkedDate> markedDates=[];

  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    /// Example with custom icon
    final _calendarCarousel = CalendarCarousel<Event>(
      onDayPressed: (date, events) {
        this.setState(() => _currentDate = date);
        events.forEach((event) => print(event.title));
      },
      weekendTextStyle: textStyle(fontWeight: fontWeightlight,TextSize: TextSizeMedium,TextColor: Colors.black)
      ,thisMonthDayBorderColor: Colors.grey,
//          weekDays: null, /// for pass null when you do not want to render weekDays
      headerText: 'Custom Header',
      weekFormat: true,
      markedDatesMap: _markedDateMap,
      height: height/3.78,
      selectedDateTime: _currentDate2,
      daysTextStyle: textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeMedium,TextColor: Colors.black),
      inactiveWeekendTextStyle: textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeMedium,TextColor: Colors.black),
      weekdayTextStyle: textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeMedium,TextColor: Colors.black),
      showIconBehindDayText: true,
//          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      todayButtonColor: Colors.transparent,
      todayBorderColor: Colors.transparent,
      markedDateCustomTextStyle: textStyle(fontWeight: fontWeightmedium,TextSize: TextSizeMedium,TextColor: Colors.white),
      markedDateMoreShowTotal:
      true, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
    );

    /// Example Calendar Carousel without header and custom prev & next button
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      width: 300,
      todayBorderColor: Colors.green,
      onDayPressed: (date, events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,

      showOnlyCurrentMonthDate: false,
      markedDateIconMargin: 2,
      daysTextStyle: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.black),
      inactiveWeekendTextStyle: textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.black),
      weekdayTextStyle:  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.black),
      weekendTextStyle:  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.black),
      headerTextStyle:  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.black),
      nextDaysTextStyle:  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.black),
      markedDateMoreCustomTextStyle:  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.black),
      markedDateCustomTextStyle:  textStyle(fontWeight: fontWeightmediumextra,TextSize: TextSizeMedium,TextColor: Colors.white),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: height/1.8,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      selectedDayBorderColor: Colors.white,
      selectedDayButtonColor: presentabsentdaylist.contains(_currentDate)?
      Colors.green:allabsentdaylist.contains(_currentDate)?Colors.red:
      AllHolidays_List.contains(_currentDate)?
      Colors.yellow:Colors.transparent,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
      CircleBorder(
          side: BorderSide(color: Colors.yellow)),

      showHeader: false,
      todayTextStyle: textStyle(
        TextColor:
           presentabsentdaylist.contains(_currentDate)?Colors.white:allabsentdaylist.contains(_currentDate)?Colors.white:
          AllHolidays_List.contains(_currentDate)?Colors.white:Colors.blue,
          fontWeight: fontWeightmediumextra
      ),
      todayButtonColor: Colors.indigoAccent,
      selectedDayTextStyle: textStyle(
          TextColor: presentabsentdaylist.contains(_currentDate)?Colors.white:allabsentdaylist.contains(_currentDate)?Colors.white:Colors.blue,
          fontWeight:fontWeightmediumextra
      ),
      showWeekDays: true,
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle:  textStyle(
        TextSize: 10,
        fontWeight: fontWeightmediumextra,
        TextColor: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle:  textStyle(
        fontWeight: FontWeight.w700,
        TextColor: Colors.tealAccent,
        TextSize: 10,
      ),

      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
      multipleMarkedDates: MultipleMarkedDates(
        markedDates: markedDates,
      ),

    );

    return SizedBox(

      child: Column(
        children: [

          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[

                new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                            _currentMonth.toUpperCase(),
                            style: textStyle(fontWeight: fontWeightmediumextra,
                              TextSize: 15)

                        )),

                    TextButton(
                      child: Text('PREV',style: textStyle(fontWeight:fontWeightmediumextra )),
                      onPressed: () {
                        setState(() {
                          _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month - 1);
                          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                        });
                        print(_targetDateTime);
                        print(_currentMonth);
                      },
                    ),
                    TextButton(
                      child: Text('NEXT',style: textStyle(fontWeight: fontWeightmediumextra),),
                      onPressed: () {
                        setState(() {
                          _targetDateTime = DateTime(
                              _targetDateTime.year, _targetDateTime.month + 1);
                          _currentMonth =
                              DateFormat.yMMM().format(_targetDateTime);
                        });
                        print("Month callllll-----------------");
                      },
                    )
                  ],
                ),
                IgnorePointer(
                  ignoring: true,
                  child:SizedBox
                    (
                    height: 250,
                    child: _calendarCarouselNoHeader,
                  ),
                ),



              ],
            ),
          ),



        ],
      ),
    );
    }
  }


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget {
  @override
  _CustomCalendarState createState() => _CustomCalendarState();

  static void _onSelectionChanged(
      //FIXME: alguna manera de parsear DateTime hacia string? .toIso8601String() n .toString() doesnt work
      DateRangePickerSelectionChangedArgs dateRange) {
    print(dateRange.value);

    String date = DateFormat("dd-MM-yyyy ").format(dateRange.value);
    print(date);
  }
}

class _CustomCalendarState extends State<CustomCalendar> {
  final DateRangePickerController _controller = DateRangePickerController();
  //TODO: MOSTRAR LA FECHA END

  String _startDate = '', _endDate = '';

  String _currentDate = "asd";

  Widget lowerText = Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Text("Le Mercredi "),
  );

  @override
  Widget build(BuildContext context) {
    Widget myCalendar = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      width: 300.0,
      height: 300.0,
      padding: EdgeInsets.all(5.0),
      child: SfDateRangePicker(
        view: DateRangePickerView.month,
        monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 6),
        selectionMode: DateRangePickerSelectionMode.single,
        controller: _controller,
        onSelectionChanged: CustomCalendar._onSelectionChanged,
        onViewChanged: viewChanged,
      ),
    );
    Widget validateTimeButtom = Container(
      width: 200.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        color: Colors.green,
      ),
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.0),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Text(
                  "VALIDATE TIMER SLOT's",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    Widget timeValidation = Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(5.0),
      height: 100,
      width: 300.0,
      color: Colors.orange,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              height: 20,
              child: Text('Start Date: ' '$_startDate')),
          Container(height: 20, child: Text('End Date: ' '$_endDate')),
        ],
      ),
    );
    Widget column = Container(
      height: 600.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myCalendar,
          lowerText,
          timeValidation,
          validateTimeButtom,
        ],
      ),
    );
    return column;
  }

  void viewChanged(DateRangePickerViewChangedArgs value) {
    _startDate = DateFormat('dd, MMMM yyyy hh:mm a')
        .format(value.visibleDateRange.startDate)
        .toString();
    _endDate = DateFormat('dd, MMMM yyyy hh:mm a')
        .format(value.visibleDateRange.endDate)
        .toString();
    SchedulerBinding.instance.addPostFrameCallback((duration) {
      setState(() {});
    });
  }
}

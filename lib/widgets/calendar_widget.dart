import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget {
  @override
  _CustomCalendarState createState() => _CustomCalendarState();

  static void _onSelectionChanged(
      DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs) {
    print(dateRangePickerSelectionChangedArgs.value);
  }
}

class _CustomCalendarState extends State<CustomCalendar> {
  final DateRangePickerController _controller = DateRangePickerController();

  String _startDate = '', _endDate = '';

  Widget lowerText = Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    child: Text("some other text whit time Stamp or DATE "),
  );

  @override
  Widget build(BuildContext context) {
    Widget myCalendar = Container(
      color: Colors.white,
      width: 300.0,
      height: 300.0,
      padding: EdgeInsets.all(5.0),
      child: SfDateRangePicker(
        view: DateRangePickerView.month,
        monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 6),
        selectionMode: DateRangePickerSelectionMode.single,

        controller: _controller,
        onSelectionChanged: CustomCalendar._onSelectionChanged,
        onViewChanged: viewChanged, // viewChanged,
      ),
    );
    Widget validateTimeButtom = Container(
      width: 200.0,
      margin: EdgeInsets.all(20.0),
      color: Colors.green,
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
      child: Text("implement the time date schedule here, see coments oncode"),
    );
    Widget column = Container(
      margin: EdgeInsets.only(top: 20.0),
      color: Colors.teal,
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
    _startDate = DateFormat('dd, MMMM yyyy')
        .format(value.visibleDateRange.startDate)
        .toString();
    _endDate = DateFormat('dd, MMMM yyyy')
        .format(value.visibleDateRange.endDate)
        .toString();
    SchedulerBinding.instance.addPostFrameCallback((duration) {
      setState(() {});
    });
  }
}

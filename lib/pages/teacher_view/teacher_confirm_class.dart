import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pagina_web/widgets/calendar_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TeacherConfirmClass extends StatefulWidget {
  @override
  _TeacherConfirmClassState createState() => _TeacherConfirmClassState();
  static void _onSelectionChanged(
      //FIXME: alguna manera de parsear DateTime hacia string? .toIso8601String() n .toString() doesnt work
      DateRangePickerSelectionChangedArgs dateRange) {
    print(dateRange.value);

    String date = DateFormat("dd-MM-yyyy ").format(dateRange.value);
    print(date);
  }
}

class _TeacherConfirmClassState extends State<TeacherConfirmClass> {
  final DateRangePickerController _controller = DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    Widget contentText = Container(
      height: 600.0,
      width: 300.0,
      margin: EdgeInsets.only(top: 20.0, right: 15.0, left: 5.0),
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Book a class for later",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "Selec a date on the calendar, and press the 'validate' button to lock in",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 250.0),
          Container(
            alignment: Alignment.center,
            height: 30.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.pink.shade600,
            ),
            margin: EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                //TODO: Insert here some func xd
              },
              child: Text(
                "Ajouter plus d'horaires",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 30.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.pink.shade600,
            ),
            margin: EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                //TODO: Insert here some func xd
              },
              child: Text(
                "Sauvergarder horaires",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
    Widget myCalendar = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      width: 150.0,
      height: 200.0,
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.only(top: 5.0, bottom: 8),
      child: SfDateRangePicker(
        view: DateRangePickerView.month,
        monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 6),
        selectionMode: DateRangePickerSelectionMode.single,
        controller: _controller,
      ),
    );

    Widget upperText = Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Text("Je confirme mes horaires: "),
    );
    Widget validateTimeButtom = Container(
      width: 200.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.green,
      ),
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () =>
            Navigator.pushReplacementNamed(context, "/teacherMainPages"),
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
                  " Je comfirme",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    Widget modifierButtom = Container(
      width: 200.0,
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.pink.shade600,
      ),
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () =>
            Navigator.pushReplacementNamed(context, "/teacherBookClass"),
        child: Container(
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 7.0),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Text(
                  "Modifier mes horraires",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    Widget selectTimes = Container(
      width: 300.0,
      height: 250.0,
      color: Colors.red,
    );

    Widget column = Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          upperText,
          myCalendar,
          selectTimes,
          validateTimeButtom,
          modifierButtom,
        ],
      ),
    );
    Wrap adjuntExamples = Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runSpacing: 5.0, // separacion al momento de rodar
      children: [contentText, column],
    );
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          adjuntExamples,
        ],
      ),
    );
  }
}

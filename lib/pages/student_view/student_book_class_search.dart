import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

class StudentBookAClassSearch extends StatefulWidget {
  @override
  _StudentBookAClassSearchState createState() =>
      _StudentBookAClassSearchState();
}

class _StudentBookAClassSearchState extends State<StudentBookAClassSearch> {
  Widget star() {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 1.5),
            child: Icon(
              Icons.star,
              color: Color(0xffB71C8C),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 1.5),
            child: Icon(
              Icons.star,
              color: Color(0xffB71C8C),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 1.5),
            child: Icon(
              Icons.star,
              color: Color(0xffB71C8C),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 1.5),
            child: Icon(
              Icons.star,
              color: Color(0xffB71C8C),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 1.5),
            child: Icon(
              Icons.star,
              color: Color(0xffB71C8C),
            )),
      ],
    );
  }

  Widget starsRow(String number) {
    Widget opc = Flexible(
      child: Row(
        children: [
          star(),
          Expanded(child: SizedBox()),
          Container(
              margin: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.screen_lock_landscape, color: Colors.white)),
          Container(
              margin: EdgeInsets.only(right: 30.0),
              child:
                  Text("$number cours", style: TextStyle(color: Colors.white)))
        ],
      ),
    );
    return opc;
  }

  Widget teacherList(
      String name, String age, String description, String number) {
    Widget opc = Flexible(
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 500.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(13),
          color: Colors.indigo.shade900,
        ),
        child: InkWell(
          onTap: () => Navigator.pushReplacementNamed(
              context, "/studentBookAClassPaidment"),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                width: 130.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.black,
                ),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0, top: 8.0, bottom: 5.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text("$name, $age",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: starsRow(number),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            description,
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return opc;
  }

  @override
  Widget build(BuildContext context) {
    Widget reserveButtom = Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xffB71C8C),
      ),
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(
            context, "/studentBookAClassPaidment"),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Reserver",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    Widget rightMenuContainer = Container(
      margin: EdgeInsets.only(left: 100.0),
      width: 500.0,
      height: 500.0,
      child:
          /* Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          teacherList("title", "24", "subtitle", "237"),
          teacherList("title", "24", "subtitle", "10"),
          teacherList("title", "24", "subtitle", "50"),
          teacherList("title", "24", "subtitle", "999"),
        ],
      ),*/
          ListView(
        scrollDirection: Axis.vertical,
        children: [
          teacherList("title", "24", "subtitle", "237"),
          teacherList("title", "24", "subtitle", "10"),
          teacherList("title", "24", "subtitle", "50"),
          teacherList("title", "24", "subtitle", "999"),
          reserveButtom,
        ],
      ),
    );
    Wrap adjuntExamples = Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runSpacing: 5.0, // separacion al momento de rodar
      children: [
        CustomCalendar(),
        rightMenuContainer,
      ],
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
    child: Text("I want a class from"),
  );
  Widget upperText = Flexible(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Text("Book a class for later"),
    ),
  );
  Widget middleText = Flexible(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Text(
          "Select a date on the calendar and scroll down to see wich teachers are available"),
    ),
  );

  @override
  Widget build(BuildContext context) {
    Widget myCalendar = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      width: 200.0,
      height: 170.0,
      padding: EdgeInsets.all(5.0),
      child: SfDateRangePicker(
        view: DateRangePickerView.month,
        monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 6),
        selectionMode: DateRangePickerSelectionMode.single,
        controller: _controller,
        onSelectionChanged: CustomCalendar._onSelectionChanged,
        // onViewChanged: viewChanged,//FIXME: ARREGLAR ESTA VAINA
      ),
    );
    Widget validateTimeButtom = Container(
      width: 200.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xffB71C8C),
      ),
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Valider recherche",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    Widget timeValidation = Flexible(
      child: Container(
        height: 50.0,
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        padding: EdgeInsets.all(5.0),
        color: Colors.orange,
        child: Column(
          children: <Widget>[
            Container(child: Text('Start Date: ' '$_startDate')),
            Container(child: Text('End Date: ' '$_endDate')),
          ],
        ),
      ),
    );
    Widget column = Container(
      width: 180.0,
      height: 600.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          upperText,
          middleText,
          myCalendar,
          lowerText,
          timeValidation,
          validateTimeButtom,
        ],
      ),
    );
    return column;
  } //FIXME: ARREGLAR ESTA VAINA

  /* void viewChanged(DateRangePickerViewChangedArgs value) {
    _startDate = DateFormat('hh:mm a')
        .format(value.visibleDateRange.startDate)
        .toString();
    _endDate =
        DateFormat('hh:mm a').format(value.visibleDateRange.endDate).toString();
    SchedulerBinding.instance.addPostFrameCallback((duration) {
      setState(() {});
    });
  }*/
}

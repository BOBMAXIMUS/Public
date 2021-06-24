import 'package:flutter/material.dart';
import 'package:pagina_web/book_class.dart';
import 'package:pagina_web/correction_stack.dart';
import 'package:pagina_web/custom_appbar.dart';
import 'package:pagina_web/home_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto"),
      home: Scaffold(
        body: CustomAppbar(),
      ),
    );
  }
}

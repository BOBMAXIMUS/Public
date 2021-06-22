import 'package:flutter/material.dart';
import 'package:pagina_web/custom_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomAppbar(),
      ),
    );
  }
}

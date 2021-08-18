import 'package:flutter/material.dart';

class TeacherQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget backgroundImage = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/purple_paper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            _OpacityContainer(),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _Banner(),
                ],
              ),
            )
          ],
        ),
        minimum: EdgeInsets.all(25.0),
      ),
    );
    return Scaffold(
      body: backgroundImage,
    );
  }
}

class _OpacityContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Expanded(
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _timerContainer = Container(
      width: 200,
      height: 60.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Color(0xff12133C),
          border: Border.all(color: Color(0xff12133C))),
    );
    Widget _aroLogo = Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(5.0),
      child: Image(
        image: AssetImage("lib/assets/images/aro_quizz_logo.jpg"),
        fit: BoxFit.cover,
      ),
    );
    Widget _underLine = Container(
      margin: EdgeInsets.only(top: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 16,
            child: Container(
              color: Color(0xffB71C8C),
              height: 1.5,
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );

    Widget _currentQuestion = Container(
      child: Column(
        children: [
          Text("Question 40/40"),
          Flexible(child: _underLine),
        ],
      ),
    );
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _timerContainer,
          _currentQuestion,
        ],
      ),
    );
  }
}

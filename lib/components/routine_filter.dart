import 'dart:ui';

import 'package:flutter/material.dart';

class RoutineFilter extends StatefulWidget {
  @override
  _RoutineFilterState createState() => _RoutineFilterState();
}

class _RoutineFilterState extends State<RoutineFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonBar(
        buttonTextTheme: ButtonTextTheme.primary,
        alignment:MainAxisAlignment.start,
        mainAxisSize:MainAxisSize.max,
//        buttonPadding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          FilterButton('하루', toggled: true, onPressed: () {}),
          FilterButton('아침', onPressed: () {}),
          FilterButton('점심', onPressed: () {}),
          FilterButton('저녁', onPressed: () {}),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  String text;
  bool toggled;
  VoidCallback onPressed;

  FilterButton(this.text, {this.toggled = false, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return toggled ? RaisedButton(
      child: Text(text, style: Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
      color: Colors.red,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
      elevation: 10.0,
    ) : FlatButton(
      child: Text(text, style: Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold, color: Colors.black),),
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
    ) ;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class RoutineWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
//        border: Border(bottom: BorderSide(color: Colors.black12.withOpacity(0.05)))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 0),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          buttonPadding: EdgeInsets.zero,
          children: [
            RoutineWeekButton(DateTime.now().add(Duration(days: -4)), 90),
            RoutineWeekButton(DateTime.now().add(Duration(days: -3)), 50),
            RoutineWeekButton(DateTime.now().add(Duration(days: -2)), 40),
            RoutineWeekButton(DateTime.now().add(Duration(days: -1)), 0),
            RoutineWeekButton(DateTime.now().add(Duration(days: 0)), 0),
            RoutineWeekButton(DateTime.now().add(Duration(days: 1)), 80),
            RoutineWeekButton(DateTime.now().add(Duration(days: 2)), 100),
          ],
        ),
      ),
    );
  }
}

class RoutineWeekButton extends StatelessWidget {
  DateTime date;
  double percent;

  RoutineWeekButton(this.date, this.percent);

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var isBeforeToday = date.isBefore(DateTime.now().add(Duration(days: -1)));
    var diffFromToday = date.difference(DateTime.now());
    var isToday = diffFromToday.inDays == 0 && diffFromToday.isNegative;

    var formatter = new DateFormat('E');

    return Column(
      children: [
        SizedBox(
          width: 45,
          height: 45,
          child: FlatButton(
            padding: EdgeInsets.zero,
            child: Text(date.day.toString(), style: Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold, color: isBeforeToday ? Colors.white : Colors.black),),
            onPressed: () {},
            color: isToday ? Colors.black12.withOpacity(0.1) : (isBeforeToday ? primaryColor
//            .withRed((primaryColor.red * (percent / 100)).round())
                .withGreen((primaryColor.green * (percent / 100)).round())
                .withBlue((primaryColor.blue * (percent / 100)).round())
                .withOpacity(max(percent / 100, 0.1)) : null
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(formatter.format(date)),
        )
      ],
    ) ;
  }
}

import 'package:flutter/material.dart';
import 'package:habittracker/components/routine_card.dart';
import 'package:habittracker/components/routine_week.dart';
import 'package:habittracker/models/habit.dart';
import 'package:habittracker/models/routine_item.dart';

class RoutinesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var habit1 = BinaryHabit(title: "팔굽혀펴기 5회");
    var habit2 = BinaryHabit(title: "세안하기");
    var habit3 = BinaryHabit(title: "팔굽혀펴기 5회");

    var routine = Routine();
    routine.title = "미해병대 아침 루틴";
    routine.preferredStartTime = TimeOfDay(hour: 7, minute: 30);
    routine.routineItems = [
      RoutineItem(habit1),
      RoutineItem(habit2),
      RoutineItem(habit1),
    ];

    var routine2 = Routine();
    routine2.title = "출근할 때";
    routine2.preferredStartTime = TimeOfDay(hour: 8, minute: 30);

    var routine3 = Routine();
    routine3.title = "퇴근할 때";
    routine3.preferredStartTime = TimeOfDay(hour: 18, minute: 10);

    var routine4 = Routine();
    routine4.title = "운동 루틴";
    routine4.preferredStartTime = TimeOfDay(hour: 19, minute: 30);

    var routine5 = Routine();
    routine5.title = "공부 루틴";
    routine5.preferredStartTime = TimeOfDay(hour: 20, minute: 30);

    var routine6 = Routine();
    routine6.title = "하루 마무리 루틴";
    routine6.preferredStartTime = TimeOfDay(hour: 24, minute: 00);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text("Streaks!", style: TextStyle(color: Colors.black),),
        bottom: PreferredSize(
        preferredSize: Size(double.infinity, 80),
          child: RoutineWeek()
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
//              child: RoutineFilter()
            ),
            RoutineCard(routine),
            RoutineCard(routine2),
            RoutineCard(routine3),
            RoutineCard(routine4),
            RoutineCard(routine5),
            RoutineCard(routine6),
          ],
        ),
      ),
    );
  }
}

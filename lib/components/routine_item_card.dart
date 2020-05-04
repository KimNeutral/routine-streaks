import 'package:flutter/material.dart';
import 'package:habittracker/models/routine_item.dart';

class RoutineItemCard extends StatefulWidget {
  RoutineItem routineItem;

  RoutineItemCard(this.routineItem);

  @override
  _RoutineItemCardState createState() => _RoutineItemCardState();
}

class _RoutineItemCardState extends State<RoutineItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black12, offset: Offset(0, 6), blurRadius: 15.0, spreadRadius: 0.0)
            ],
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        padding: EdgeInsets.all(15),
        child: Text(
          widget.routineItem.habit.title, style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}

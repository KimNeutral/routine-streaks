import 'package:flutter/material.dart';
import 'package:habittracker/components/routine_item_card.dart';
import 'package:habittracker/models/routine_item.dart';

class RoutineCard extends StatefulWidget {
  Routine routine;

  RoutineCard(this.routine);

  @override
  _RoutineCardState createState() => _RoutineCardState();
}

class _RoutineCardState extends State<RoutineCard> {
  @override
  Widget build(BuildContext context) {
    var boldTextStyle = Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Text(
                  widget.routine.preferredStartTime.format(context),
                  style: boldTextStyle
                ),
//                Expanded(
//                  child: Text("5일 연속!", textAlign: TextAlign.right, style: boldTextStyle.copyWith(color: Colors.green))
//                )
              ],
            ),
          ),
          Padding(
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
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.check, color: Colors.green),
                  ),
                  Text(
                    widget.routine.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
          )
//          ...widget.routine.routineItems.map((e) => RoutineItemCard(e))
        ],
      ),
    );
  }
}

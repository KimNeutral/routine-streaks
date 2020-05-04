import 'package:flutter/material.dart';

import 'habit.dart';

class Routine {
  String id;
  String title;
  String description;
  List<RoutineItem> routineItems;
  TimeOfDay preferredStartTime;
}

class RoutineItem {
  Habit habit;

  RoutineItem(this.habit);
}
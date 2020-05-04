abstract class Habit {
  String id;
  String title;
  String description;

  Habit({this.id, this.title, this.description});
}

class BinaryHabit extends Habit {
  BinaryHabit({id, title, description}) : super(id: id, title: title, description: description);

  bool state;
}
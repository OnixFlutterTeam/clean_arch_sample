import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 1)
class TodoModel extends HiveObject {
  @HiveField(1)
  int userId;
  @HiveField(2)
  int id;
  @HiveField(3)
  String title;
  @HiveField(4)
  bool completed;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
}

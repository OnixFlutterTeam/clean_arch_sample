import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';
import 'package:flutter/material.dart';

class TodoView extends StatelessWidget {
  final TodoEntity item;

  const TodoView({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.text_snippet_outlined),
      title: Text(
        item.title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}

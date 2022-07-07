import 'package:flutter/material.dart';

import '../../../../domain/entity/todo_entity.dart';

class TodoView extends StatelessWidget {
  final TodoEntity item;

  const TodoView({super.key, required this.item});

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

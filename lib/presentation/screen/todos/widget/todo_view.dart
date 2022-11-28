import 'package:clean_arch_sample/domain/entity/todo/todo_entity.dart';
import 'package:clean_arch_sample/presentation/style/theme/theme_imports.dart';
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
        style: context.themeTextStyles.bodyText16,
      ),
    );
  }
}

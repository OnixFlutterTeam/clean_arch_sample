import 'package:flutter/material.dart';

class NoTodosView extends StatelessWidget {
  const NoTodosView({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          'No todos found',
          style: Theme.of(context).textTheme.caption,
        ),
      );
}

import 'package:flutter/material.dart';

class KeyboardClosable extends StatelessWidget {
  final Widget child;

  const KeyboardClosable({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: child,
      );
}

import 'package:flutter/material.dart';

class ScrollRootMin extends StatelessWidget {
  final Widget child;
  final ScrollPhysics? physics;

  const ScrollRootMin({
    required this.child,
    this.physics,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, viewportConstraints) {
        return SingleChildScrollView(
          physics: physics ?? const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: child,
          ),
        );
      },
    );
  }
}

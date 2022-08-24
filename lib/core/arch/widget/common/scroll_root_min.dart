import 'package:flutter/material.dart';

class ScrollRootMin extends StatelessWidget {
  const ScrollRootMin({
    Key? key,
    required this.child,
    this.physics,
  }) : super(key: key);

  final Widget child;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
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

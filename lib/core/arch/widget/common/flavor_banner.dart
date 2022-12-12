import 'package:flutter/material.dart';

class FlavorBanner extends StatelessWidget {
  final Widget child;

  const FlavorBanner({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //TODO with flavor: if (FlavorConfig.I.flavor == Flavors.prod) return child;
    return child;
    //ignore: dead_code
    return Stack(
      children: <Widget>[
        child,
        CustomPaint(
          painter: BannerPainter(
            //TODO with flavor: message: FlavorConfig.I.appVersion + FlavorConfig.I.flavorName,
            message: '',
            textDirection: Directionality.of(context),
            //ignore: no-equal-arguments
            layoutDirection: Directionality.of(context),
            location: BannerLocation.topStart,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

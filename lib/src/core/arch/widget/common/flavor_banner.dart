import 'package:flutter/material.dart';

class FlavorBanner extends StatelessWidget {
  const FlavorBanner({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    //TODO with flavor: if (FlavorConfig.I.flavor == Flavors.prod) return child;
    return child;
    return Stack(
      children: <Widget>[
        child,
        _buildBanner(context),
      ],
    );
  }

  Widget _buildBanner(BuildContext context) {
    return CustomPaint(
      painter: BannerPainter(
        //TODO with flavor: message: FlavorConfig.I.appVersion + FlavorConfig.I.flavorName,
        message: '',
        textDirection: Directionality.of(context),
        layoutDirection: Directionality.of(context),
        location: BannerLocation.topStart,
        color: Colors.red,
      ),
    );
  }
}

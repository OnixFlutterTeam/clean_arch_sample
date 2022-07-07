import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/core/go_routes.dart';
import 'src/presentation/style/styles.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    GoRoutes.initialize();
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp.router(
            builder: (context, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            scrollBehavior: const CupertinoScrollBehavior(),
            title: '',
            theme: Styles.appTheme,
            routeInformationProvider: GoRoutes.router.routeInformationProvider,
            routeInformationParser: GoRoutes.router.routeInformationParser,
            routerDelegate: GoRoutes.router.routerDelegate,
          );
        });
  }
}

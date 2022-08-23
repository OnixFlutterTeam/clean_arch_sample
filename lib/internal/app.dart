import 'package:clean_arch_sample/internal/localization/common_app_localization.dart';
import 'package:clean_arch_sample/src/core/arch/widget/common/flavor_banner.dart';
import 'package:clean_arch_sample/src/core/di/app.dart';
import 'package:clean_arch_sample/src/presentation/style/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';

class App extends StatelessWidget {
  App({super.key});

  Locale? locale;

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      useDefaultLoading: true,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp.router(
            builder: (context, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: FlavorBanner(child: widget ?? const SizedBox()),
              );
            },
            scrollBehavior: const CupertinoScrollBehavior(),
            theme: Styles.appTheme,
            debugShowCheckedModeBanner: false,
            locale: locale,
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              locale ??=
                  Locale(AppLocalizations.supportedLocales.last.languageCode);
              return locale;
            },
            onGenerateTitle: (BuildContext context) => str(context).title,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerDelegate: appRouter().delegate(
                navigatorObservers: () => [
                      routerLoggingObserver(),
                    ]),
            routeInformationParser: appRouter().defaultRouteParser(),
          );
        },
      ),
    );
  }
}

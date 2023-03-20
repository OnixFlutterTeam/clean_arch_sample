import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/app/bloc/app_bloc_imports.dart';
import 'package:clean_arch_sample/core/arch/bloc/base_block_state.dart';
import 'package:clean_arch_sample/core/arch/widget/common/misk.dart';
import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:clean_arch_sample/presentation/screen/splash/bloc/splash_bloc_imports.dart';
import 'package:clean_arch_sample/presentation/style/theme/theme_imports.dart';
import 'package:clean_arch_sample/util/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState
    extends BaseState<SplashScreenState, SplashBloc, SplashSR, SplashScreen> {
  @override
  Widget buildWidget(BuildContext context) {
    return srObserver(
      context: context,
      child: Scaffold(
        backgroundColor: context.themeColors.backgroundColor,
        body: SizedBox.expand(
          child: blocConsumer(
            stateListener: (state) => _buildMainContainer(context, state),
          ),
        ),
      ),
      onSR: _onSingleResult,
    );
  }

  AppBloc _appBlocOf(BuildContext context) => BlocProvider.of<AppBloc>(context);

  void _onSingleResult(BuildContext context, SplashSR singleResult) {
    singleResult.when(
      loadFinished: () {
        context.replaceRoute(const TodosRoute());
      },
    );
  }

  Widget _buildMainContainer(
    BuildContext context,
    SplashScreenState _,
  ) {
    final button18 = context.themeTextStyles.button18;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Splash screen',
            style: context.themeTextStyles.fs28,
          ),
          Delimiter.height(Dimensions.delimiterH10),
          Text(
            'Auto navigate next after 20 seconds',
            style: context.themeTextStyles.bodyText16,
          ),
          Delimiter.height(Dimensions.delimiterH10),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                context.themeColors.buttonColor,
              ),
            ),
            onPressed: () {
              context.replaceRoute(const TodosRoute());
            },
            child: Text(
              'Navigate Next',
              style: button18,
            ),
          ),
          Delimiter.height(10.h),
          OutlinedButton(
            onPressed: () {
              _appBlocOf(context)
                  .add(const AppEvent.changeTheme(ThemeMode.dark));
            },
            child: Text(
              'Theme dark',
              style: button18,
            ),
          ),
          Delimiter.height(Dimensions.delimiterH10),
          OutlinedButton(
            onPressed: () {
              _appBlocOf(context)
                  .add(const AppEvent.changeTheme(ThemeMode.light));
            },
            child: Text(
              'Theme light',
              style: button18,
            ),
          ),
          Delimiter.height(Dimensions.delimiterH10),
          OutlinedButton(
            onPressed: () {
              _appBlocOf(context)
                  .add(const AppEvent.changeTheme(ThemeMode.system));
            },
            child: Text(
              'Theme system',
              style: button18,
            ),
          ),
        ],
      ),
    );
  }
}

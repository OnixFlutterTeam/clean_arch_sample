import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/app/bloc/app_bloc_imports.dart';
import 'package:clean_arch_sample/core/arch/bloc/base_block_state.dart';
import 'package:clean_arch_sample/core/arch/widget/common/misk.dart';
import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:clean_arch_sample/presentation/screen/splash/bloc/splash_bloc_imports.dart';
import 'package:clean_arch_sample/presentation/style/theme_extension/app_colors.dart';
import 'package:clean_arch_sample/presentation/style/theme_extension/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        backgroundColor: context.backgroundColor,
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Splash screen',
            style: context.fs28,
          ),
          Delimiter.height(10.h),
          Text(
            'Auto navigate next after 20 seconds',
            style: context.bodyText16,
          ),
          Delimiter.height(10.h),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                context.buttonColor,
              ),
            ),
            onPressed: () {
              context.replaceRoute(const TodosRoute());
            },
            child: Text(
              'Navigate Next',
              style: context.button18,
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
              style: context.button18,
            ),
          ),
          Delimiter.height(10.h),
          OutlinedButton(
            onPressed: () {
              _appBlocOf(context)
                  .add(const AppEvent.changeTheme(ThemeMode.light));
            },
            child: Text(
              'Theme light',
              style: context.button18,
            ),
          ),
          Delimiter.height(10.h),
          OutlinedButton(
            onPressed: () {
              _appBlocOf(context)
                  .add(const AppEvent.changeTheme(ThemeMode.system));
            },
            child: Text(
              'Theme system',
              style: context.button18,
            ),
          ),
        ],
      ),
    );
  }
}

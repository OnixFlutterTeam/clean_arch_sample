import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_sample/core/arch/bloc/base_block_state.dart';
import 'package:clean_arch_sample/core/router/app_router.dart';
import 'package:clean_arch_sample/presentation/screen/splash/bloc/splash_bloc_imports.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        body: SizedBox.expand(
          child: blocConsumer(
            stateListener: (state) => _buildMainContainer(context, state),
          ),
        ),
      ),
      onSR: _onSingleResult,
    );
  }

  void _onSingleResult(BuildContext context, SplashSR singleResult) {
    singleResult.when(
      loadFinished: () {
        context.replaceRoute(const TodosRoute());
      },
    );
  }

  Widget _buildMainContainer(
    BuildContext context,
    SplashScreenState state,
  ) {
    return const Center(
      child: Text('Splash screen'),
    );
  }
}

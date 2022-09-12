import 'package:clean_arch_sample/core/arch/bloc/base_bloc.dart';
import 'package:clean_arch_sample/core/arch/bloc/stream_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';

typedef ListenDelegate<S> = void Function(BuildContext context, S state);
typedef StateListener<S> = Widget Function(S state);
typedef SingleResultListener<SR> = void Function(
  BuildContext context,
  SR singleResult,
);

abstract class BaseState<S, B extends BaseBloc<dynamic, S, SR>, SR,
    W extends StatefulWidget> extends State<W> {
  bool lazyBloc = false;
  B? _bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (context) {
        final bloc = createBloc();
        onBlocCreated(context, bloc);
        _bloc = bloc;
        return bloc;
      },
      lazy: lazyBloc,
      child: Builder(
        builder: (context) {
          initParams(context);
          return buildWidget(context);
        },
      ),
    );
  }

  @override
  void dispose() {
    if (_bloc != null) {
      _bloc?.dispose();
    }
    super.dispose();
  }

  B blocOf(BuildContext context) => BlocProvider.of<B>(context);

  B createBloc() => GetIt.I.get<B>();

  //ignore: avoid_types_on_closure_parameters
  Widget stateObserver(
    BuildContext context,
    StateListener<S> stateListener, {
    SingleResultListener<SR>? onSR,
    ListenDelegate<S>? listenDelegate,
  }) {
    return StreamListener<SR>(
      stream: (_bloc ?? context.read<B>()).singleResults,
      onData: (data) {
        onSR != null ? onSR(context, data) : _defaultOnSr(context, data);
      },
      child: BlocConsumer(
        bloc: blocOf(context),
        builder: (_, S state) => stateListener(state),
        listener: listenDelegate ?? _defaultListenDelegate,
      ),
    );
  }

  // ignore: no-empty-block
  void onStateChanged(BuildContext context, S state) {}

  void onBlocCreated(BuildContext context, B bloc) {
    bloc.progressStream.listen((event) async {
      if (event) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
  }

  // ignore: no-empty-block
  void initParams(BuildContext context) {}

  Widget buildWidget(BuildContext context);

  // ignore: no-empty-block
  void _defaultOnSr(BuildContext context, SR singleResult) {}

  // ignore: no-empty-block
  void _defaultListenDelegate(BuildContext context, S state) {}
}

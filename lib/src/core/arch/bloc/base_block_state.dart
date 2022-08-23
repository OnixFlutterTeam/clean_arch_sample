import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'base_bloc.dart';
import 'stream_listener.dart';

typedef ListenDelegate<S> = void Function(BuildContext context, S state);
typedef StateListener<S> = Widget Function(S state);
typedef SingleResultListener<SR> = void Function(
    BuildContext context, SR singleResult);

abstract class BaseState<S, B extends BaseBloc<dynamic, S, SR>, SR,
    W extends StatefulWidget> extends State<W> {
  B blocOf(BuildContext context) => BlocProvider.of<B>(context);

  B? _bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (BuildContext context) {
        final bloc = GetIt.I.get<B>();
        onBlocCreated(context, bloc);
        _bloc = bloc;
        return bloc;
      },
      lazy: false,
      child: Builder(
        builder: (BuildContext context) {
          initParams(context);
          return buildWidget(context);
        },
      ),
    );
  }

  Widget stateObserver(
    BuildContext context,
    StateListener<S> stateListener, {
    SingleResultListener<SR>? onSR,
    ListenDelegate<S>? listenDelegate,
  }) {
    return StreamListener<SR>(
      stream: (_bloc ?? context.read<B>()).singleResults,
      onData: (data) {
        if (onSR != null) {
          onSR(context, data);
        } else {
          _defaultOnSr(context, data);
        }
      },
      child: BlocConsumer(
        bloc: blocOf(context),
        builder: (BuildContext context, S state) => stateListener(state),
        listener: listenDelegate ?? _defaultListenDelegate,
      ),
    );
  }

  void _defaultOnSr(BuildContext context, SR singleResult) {}

  void _defaultListenDelegate(BuildContext context, S state) {}

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

  void initParams(BuildContext context) {}

  Widget buildWidget(BuildContext context);

  @override
  void dispose() {
    if (_bloc != null) {
      _bloc?.dispose();
    }
    super.dispose();
  }
}

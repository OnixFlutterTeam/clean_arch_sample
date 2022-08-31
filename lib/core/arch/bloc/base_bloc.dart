import 'dart:async';

import 'package:clean_arch_sample/core/arch/data/remote/base/map_common_server_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/data_response.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/failure/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sr_mixin.dart';

abstract class BaseBloc<Event, State, SR> extends Bloc<Event, State>
    with SingleResultMixin<Event, State, SR> {
  BaseBloc(State initialState) : super(initialState) {
    _errorStreamController = StreamController<Failure>.broadcast();
    _progressStreamController = StreamController<bool>.broadcast();
  }

  @protected
  late StreamController<Failure> _errorStreamController;

  Stream<Failure> get failureStream => _errorStreamController.stream;

  @protected
  late StreamController<bool> _progressStreamController;

  Stream<bool> get progressStream => _progressStreamController.stream;

  void showProgress() {
    if (!_progressStreamController.isClosed) {
      _progressStreamController.add(true);
    }
  }

  Future<void> hideProgress() async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    if (!_progressStreamController.isClosed) {
      _progressStreamController.add(false);
    }
  }

  void onFailure(Failure failure) {
    if (!_errorStreamController.isClosed) {
      _errorStreamController.add(failure);
    }
  }

  void parseServerFailure(DataResponse failure) {
    final apiFailure = MapCommonServerError.getServerFailureDetails(failure);
    onFailure(apiFailure);
  }

  void dispose() {
    if (!_errorStreamController.isClosed) {
      _errorStreamController.close();
    }
    if (!_progressStreamController.isClosed) {
      _progressStreamController.close();
    }
  }
}

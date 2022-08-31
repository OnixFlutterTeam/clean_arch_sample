import 'dart:async';
import 'dart:io';

import 'package:clean_arch_sample/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/data_response.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:retry/retry.dart';

///Custom function to provide request Future
typedef OnRequest<T> = Future<T> Function();

///Custom Function to provide response converter (Map to Object)
typedef OnResponse<T> = T Function(Response<dynamic> resposne);

abstract class DioRequestProcessor {
  ///Pass 2 required functions:
  ///onRequest - your request Future
  ///onResponse - your response converter, basically call fromJson inside
  ///checkNetworkConnection - set to false if you need get data from cache interceptor
  Future<DataResponse<R>> processRequest<T, R>({
    required OnRequest<T> onRequest,
    required OnResponse<R> onResponse,
    bool checkNetworkConnection = true,
  });
}


import 'package:clean_arch_sample/core/app/localization/common_app_localization_ext.dart';
import 'package:clean_arch_sample/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/common/data_response.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/failure/api_failure.dart';
import 'package:clean_arch_sample/core/arch/domain/entity/failure/failure.dart';
import 'package:clean_arch_sample/core/di/app.dart';
import 'package:flutter/material.dart';

class MapCommonServerError {
  static String getApiFailureMessage(BuildContext context, ApiFailure failure) {
    switch (failure.failure) {
      case ServerFailure.noNetwork:
        return context.str.apiFailureNoNetwork;
      case ServerFailure.exception:
        return context.str.apiFailureUndefined;
      case ServerFailure.unAuthorized:
        return context.str.apiFailureUnAuthorized;
      case ServerFailure.tooManyRequests:
        return context.str.apiFailureTooManyRequests;
      case ServerFailure.response:
        return failure.message;
      case ServerFailure.unknown:
        return context.str.apiFailureUndefined;
    }
  }

  static Failure getServerFailureDetails<T>(
    DataResponse<T> failure,
  ) {
    try {
      return failure.maybeWhen(
        undefinedError: (error) => ApiFailure(
          ServerFailure.unknown,
          message: error.toString(),
        ),
        apiError: _getResponseError,
        notConnected: () => ApiFailure(ServerFailure.noNetwork),
        unauthorized: () => ApiFailure(ServerFailure.unAuthorized),
        tooManyRequests: () => ApiFailure(ServerFailure.tooManyRequests),
        orElse: () => ApiFailure(ServerFailure.unknown),
      );
    } catch (e, trace) {
      logger.e('Mapping Error Failed', e, trace);
      return ApiFailure(ServerFailure.exception, message: e.toString());
    }
  }

  static ApiFailure _getResponseError(customError) {
    if (customError is DefaultApiError) {
      return ApiFailure(
        ServerFailure.response,
        message: customError.name,
      );
    }
    //TODO process other error types and provide results
    //TODO also add new error types to DataResponse if needed
    return ApiFailure(
      ServerFailure.response,
      message: '',
    );
  }
}

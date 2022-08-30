import 'package:clean_arch_sample/core/app/localization/common_app_localization.dart';
import 'package:clean_arch_sample/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/common/data_response.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/api_failure.dart';
import 'package:clean_arch_sample/core/arch/domain/entities/failure/failure.dart';
import 'package:clean_arch_sample/core/arch/logger.dart';
import 'package:flutter/material.dart';

class MapCommonServerError {
  static String getApiFailureMessage(BuildContext context, ApiFailure failure) {
    switch (failure.failure) {
      case ServerFailure.noNetwork:
        return str(context).apiFailureNoNetwork;
      case ServerFailure.exception:
        return str(context).apiFailureUndefined;
      case ServerFailure.unAuthorized:
        return str(context).apiFailureUnAuthorized;
      case ServerFailure.tooManyRequests:
        return str(context).apiFailureTooManyRequests;
      case ServerFailure.response:
        return failure.message;
      case ServerFailure.unknown:
        return str(context).apiFailureUndefined;
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
        apiError: (error) => _getResponseError(error),
        notConnected: () => ApiFailure(ServerFailure.noNetwork),
        unauthorized: () => ApiFailure(ServerFailure.unAuthorized),
        tooManyRequests: () => ApiFailure(ServerFailure.tooManyRequests),
        orElse: () => ApiFailure(ServerFailure.unknown),
      );
    } catch (e) {
      Logger.printException(e);
      return ApiFailure(ServerFailure.exception, message: e.toString());
    }
  }

  static ApiFailure _getResponseError(dynamic customError) {
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

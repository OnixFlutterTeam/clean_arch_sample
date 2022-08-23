import 'package:clean_arch_sample/internal/localization/common_app_localization.dart';
import 'package:clean_arch_sample/src/core/arch/data/remote/error/default_api_error.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/dio_error_handler/dio_error_models.dart';
import 'package:clean_arch_sample/src/core/arch/domain/entities/failure/api_failure.dart';
import 'package:clean_arch_sample/src/core/arch/logger.dart';
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

  static ApiFailure getServerFailureDetails(
    CommonResponseError<DefaultApiError> failure,
  ) {
    try {
      return failure.when(
        noNetwork: () => ApiFailure(ServerFailure.noNetwork),
        unAuthorized: () => ApiFailure(ServerFailure.unAuthorized),
        tooManyRequests: () => ApiFailure(ServerFailure.tooManyRequests),
        customError: (customError, errorCode) => _getResponseError(customError),
        undefinedError: (errorObject) => ApiFailure(ServerFailure.exception),
      );
    } catch (e) {
      Logger.printException(e);
      return ApiFailure(ServerFailure.exception);
    }
  }

  static ApiFailure _getResponseError(dynamic customError) {
    if (customError is DefaultApiError) {
      return ApiFailure(
        ServerFailure.response,
        message: customError.name,
      );
    }
    return ApiFailure(
      ServerFailure.response,
      message: '',
    );
  }
}

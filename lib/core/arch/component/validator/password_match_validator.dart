import 'package:clean_arch_sample/core/app/localization/common_app_localization_ext.dart';
import 'package:flutter/material.dart';

import 'base/validator_result.dart';

class PasswordMachValidator {
  ValidatorResult validate(
    BuildContext context,
    String? value,
    String? secondValue,
  ) {
    var errors = List<String>.empty(growable: true);
    if (value == null || value.trim().isEmpty) {
      errors.add(context.str.errorEmptyField);
      return ValidatorResult(errors);
    }
    if (value.trim() != secondValue?.trim()) {
      errors.add(context.str.errorPasswordNotMatch);
      return ValidatorResult(errors);
    }
    return ValidatorResult.success();
  }

  String? asValidator(
    BuildContext context,
    String? value,
    String? secondValue,
  ) {
    var res = validate(context, value, secondValue);
    return res.isValid() ? null : res.asMessage();
  }
}

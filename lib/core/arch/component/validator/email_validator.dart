import 'package:clean_arch_sample/core/app/localization/common_app_localization_ext.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

import 'base/base_value_validator.dart';
import 'base/validator_result.dart';

class EmailValidator extends BaseValueValidator<String> {
  @override
  ValidatorResult validate(BuildContext context, String? value) {
    var errors = List<String>.empty(growable: true);
    if (value == null || value.trim().isEmpty) {
      errors.add(context.str.errorEmptyField);
      return ValidatorResult(errors);
    }
    if (!isEmail(value.trim())) {
      errors.add(context.str.errorEmail);
      return ValidatorResult(errors);
    }

    return ValidatorResult.success();
  }
}

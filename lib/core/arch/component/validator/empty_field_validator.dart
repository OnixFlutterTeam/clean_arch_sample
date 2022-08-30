import 'package:clean_arch_sample/core/app/localization/common_app_localization.dart';
import 'package:flutter/material.dart';

import 'base/base_value_validator.dart';
import 'base/validator_result.dart';

class EmptyFieldValidator extends BaseValueValidator<String> {
  @override
  ValidatorResult validate(BuildContext context, String? value) {
    var errors = List<String>.empty(growable: true);
    if (value == null || value.trim().isEmpty) {
      errors.add(str(context).errorEmptyField);
      return ValidatorResult(errors);
    }
    return ValidatorResult.success();
  }
}

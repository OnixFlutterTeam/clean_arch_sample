import 'package:clean_arch_sample/core/app/localization/common_app_localization_ext.dart';
import 'package:flutter/cupertino.dart';

import 'base/base_value_validator.dart';
import 'base/validator_result.dart';
import 'helper/password_checker.dart';

class PasswordComplianceValidator extends BaseValueValidator<String> {
  @override
  ValidatorResult validate(BuildContext context, String? value) {
    var errors = <String>[];
    if (value == null || value.trim().isEmpty) {
      errors.add(context.str.errorEmptyField);
      return ValidatorResult(errors);
    }
    var password = value.trim();
    var passwordChecker = PasswordChecker();
    var check = passwordChecker.checkPassword(password);
    if (!check.isCompliant) {
      if (!check.isMinLengthEnough) {
        errors.add(context.str.errorPasswordToShort);
      }
      if (!check.isMaxLengthEnough) {
        errors.add(context.str.errorPasswordToLong);
      }
      if (!check.hasSpecialCharacters) {
        errors.add(context.str.errorPasswordSpecialCharacter);
      }
      if (!check.hasLetters) {
        errors.add(context.str.errorPasswordLetters);
      }
      if (!check.hasDigits) {
        errors.add(context.str.errorPasswordNumeral);
      }
    }
    return ValidatorResult(errors);
  }
}

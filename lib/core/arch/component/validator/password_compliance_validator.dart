import 'package:clean_arch_sample/internal/localization/common_app_localization.dart';
import 'package:flutter/cupertino.dart';

import 'base/base_value_validator.dart';
import 'base/validator_result.dart';
import 'helper/password_checker.dart';

class PasswordComplianceValidator extends BaseValueValidator<String> {
  @override
  ValidatorResult validate(BuildContext context, String? value) {
    var errors = <String>[];
    if (value == null || value.trim().isEmpty) {
      errors.add(str(context).errorEmptyField);
      return ValidatorResult(errors);
    }
    var password = value.trim();
    var passwordChecker = PasswordChecker();
    var check = passwordChecker.checkPassword(password);
    if (!check.isCompliant) {
      if (!check.isMinLengthEnough) {
        errors.add(str(context).errorPasswordToShort);
      }
      if (!check.isMaxLengthEnough) {
        errors.add(str(context).errorPasswordToLong);
      }
      if (!check.hasSpecialCharacters) {
        errors.add(str(context).errorPasswordSpecialCharacter);
      }
      if (!check.hasLetters) {
        errors.add(str(context).errorPasswordLetters);
      }
      if (!check.hasDigits) {
        errors.add(str(context).errorPasswordNumeral);
      }
    }
    return ValidatorResult(errors);
  }
}

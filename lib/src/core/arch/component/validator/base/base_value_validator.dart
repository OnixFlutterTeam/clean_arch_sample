import 'package:flutter/material.dart';

import 'validator_result.dart';

abstract class BaseValueValidator<T> {
  ValidatorResult validate(BuildContext context, T? value);

  String? asValidator(BuildContext context, T? value) {
    var res = validate(context, value);
    return res.isValid() ? null : res.asMessage();
  }
}

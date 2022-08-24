class ValidatorResult {
  ValidatorResult(this.errors);

  ValidatorResult.success() {
    errors.clear();
  }

  List<String> errors = List<String>.empty(growable: true);

  bool isValid() => errors.isEmpty;

  String asMessage() {
    var message = '';
    if (errors.isEmpty) {
      return message;
    }

    for (var i = 0; i < errors.length; i++) {
      message += errors[i];
      if (i < errors.length - 1) {
        message += '\n';
      }
    }
    return message;
  }
}

class PasswordCheckerResult {
  PasswordCheckerResult({
    required this.hasLetters,
    required this.hasDigits,
    required this.hasSpecialCharacters,
    required this.isCompliant,
    required this.isMinLengthEnough,
    required this.isMaxLengthEnough,
  });

  final bool hasLetters;
  final bool hasDigits;
  final bool hasSpecialCharacters;
  final bool isCompliant;
  final bool isMinLengthEnough;
  final bool isMaxLengthEnough;
}

class PasswordChecker {
  static const int passMinLength = 8;
  static const int passMaxLength = 20;
  final RegExp specialCharsRegExp = RegExp(r'[!@#$%^&*()?<>]');
  final RegExp charactersRegExp = RegExp(r'^[a-zA-Z]');
  final RegExp hasDigitRegExp = RegExp(r'\d+');

  PasswordCheckerResult checkPassword(String password) {
    if (password.isEmpty) {
      return PasswordCheckerResult(
        hasDigits: false,
        hasLetters: false,
        hasSpecialCharacters: false,
        isCompliant: false,
        isMinLengthEnough: false,
        isMaxLengthEnough: false,
      );
    }

    var hasLetters = false;
    var hasDigits = false;
    var hasSpecialCharacters = false;
    var isMinLengthEnough = false;
    var isMaxLengthEnough = false;

    bool isDigit(String s, int idx) =>
        '0'.compareTo(s[idx]) <= 0 && '9'.compareTo(s[idx]) >= 0;

    var isCompliant = false;

    var character = '';
    var i = 0;
    if (password.isNotEmpty) {
      hasSpecialCharacters = password.contains(specialCharsRegExp);
      while (i < password.length) {
        character = password.substring(i, i + 1);
        if (isDigit(character, 0)) {
          hasDigits = true;
        } else if (character.contains(charactersRegExp)) {
          hasLetters = true;
        }
        i++;
      }
    }
    isMinLengthEnough = password.length >= passMinLength;
    isMaxLengthEnough = password.length <= passMaxLength;
    isCompliant = hasDigits &
        hasLetters &
        hasSpecialCharacters &
        isMinLengthEnough &
        isMaxLengthEnough;

    return PasswordCheckerResult(
      hasDigits: hasDigits,
      hasLetters: hasLetters,
      hasSpecialCharacters: hasSpecialCharacters,
      isCompliant: isCompliant,
      isMinLengthEnough: isMinLengthEnough,
      isMaxLengthEnough: isMaxLengthEnough,
    );
  }
}

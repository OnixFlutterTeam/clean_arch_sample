// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_colors.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.backgroundColor,
    required this.buttonColor,
  });

  final Color backgroundColor;
  final Color buttonColor;

  static final AppColors light = AppColors(
    backgroundColor: _$AppColors.backgroundColor[0],
    buttonColor: _$AppColors.buttonColor[0],
  );

  static final AppColors dark = AppColors(
    backgroundColor: _$AppColors.backgroundColor[1],
    buttonColor: _$AppColors.buttonColor[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppColors copyWith({
    Color? backgroundColor,
    Color? buttonColor,
  }) {
    return AppColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonColor: buttonColor ?? this.buttonColor,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(backgroundColor, other.backgroundColor) &&
            const DeepCollectionEquality()
                .equals(buttonColor, other.buttonColor));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(backgroundColor),
        const DeepCollectionEquality().hash(buttonColor));
  }
}

extension AppColorsBuildContextProps on BuildContext {
  AppColors get _appColors => Theme.of(this).extension<AppColors>()!;
  Color get backgroundColor => _appColors.backgroundColor;
  Color get buttonColor => _appColors.buttonColor;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'theme_colors.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.backgroundColor,
    required this.buttonColor,
  });

  final Color backgroundColor;
  final Color buttonColor;

  static final ThemeColors light = ThemeColors(
    backgroundColor: _$ThemeColors.backgroundColor[0],
    buttonColor: _$ThemeColors.buttonColor[0],
  );

  static final ThemeColors dark = ThemeColors(
    backgroundColor: _$ThemeColors.backgroundColor[1],
    buttonColor: _$ThemeColors.buttonColor[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  ThemeColors copyWith({
    Color? backgroundColor,
    Color? buttonColor,
  }) {
    return ThemeColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonColor: buttonColor ?? this.buttonColor,
    );
  }

  @override
  ThemeColors lerp(ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) return this;
    return ThemeColors(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeColors &&
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

extension ThemeColorsBuildContext on BuildContext {
  ThemeColors get themeColors => Theme.of(this).extension<ThemeColors>()!;
}

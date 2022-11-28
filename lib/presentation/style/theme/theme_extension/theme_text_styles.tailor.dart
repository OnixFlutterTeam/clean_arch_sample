// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'theme_text_styles.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  const ThemeTextStyles({
    required this.fs28,
    required this.fs24,
    required this.fs18,
    required this.button18,
    required this.bodyText16,
    required this.caption14,
  });

  final TextStyle fs28;
  final TextStyle fs24;
  final TextStyle fs18;
  final TextStyle button18;
  final TextStyle bodyText16;
  final TextStyle caption14;

  static final ThemeTextStyles light = ThemeTextStyles(
    fs28: _$ThemeTextStyles.fs28[0],
    fs24: _$ThemeTextStyles.fs24[0],
    fs18: _$ThemeTextStyles.fs18[0],
    button18: _$ThemeTextStyles.button18[0],
    bodyText16: _$ThemeTextStyles.bodyText16[0],
    caption14: _$ThemeTextStyles.caption14[0],
  );

  static final ThemeTextStyles dark = ThemeTextStyles(
    fs28: _$ThemeTextStyles.fs28[1],
    fs24: _$ThemeTextStyles.fs24[1],
    fs18: _$ThemeTextStyles.fs18[1],
    button18: _$ThemeTextStyles.button18[1],
    bodyText16: _$ThemeTextStyles.bodyText16[1],
    caption14: _$ThemeTextStyles.caption14[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  ThemeTextStyles copyWith({
    TextStyle? fs28,
    TextStyle? fs24,
    TextStyle? fs18,
    TextStyle? button18,
    TextStyle? bodyText16,
    TextStyle? caption14,
  }) {
    return ThemeTextStyles(
      fs28: fs28 ?? this.fs28,
      fs24: fs24 ?? this.fs24,
      fs18: fs18 ?? this.fs18,
      button18: button18 ?? this.button18,
      bodyText16: bodyText16 ?? this.bodyText16,
      caption14: caption14 ?? this.caption14,
    );
  }

  @override
  ThemeTextStyles lerp(ThemeExtension<ThemeTextStyles>? other, double t) {
    if (other is! ThemeTextStyles) return this;
    return ThemeTextStyles(
      fs28: TextStyle.lerp(fs28, other.fs28, t)!,
      fs24: TextStyle.lerp(fs24, other.fs24, t)!,
      fs18: TextStyle.lerp(fs18, other.fs18, t)!,
      button18: TextStyle.lerp(button18, other.button18, t)!,
      bodyText16: TextStyle.lerp(bodyText16, other.bodyText16, t)!,
      caption14: TextStyle.lerp(caption14, other.caption14, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeTextStyles &&
            const DeepCollectionEquality().equals(fs28, other.fs28) &&
            const DeepCollectionEquality().equals(fs24, other.fs24) &&
            const DeepCollectionEquality().equals(fs18, other.fs18) &&
            const DeepCollectionEquality().equals(button18, other.button18) &&
            const DeepCollectionEquality()
                .equals(bodyText16, other.bodyText16) &&
            const DeepCollectionEquality().equals(caption14, other.caption14));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(fs28),
        const DeepCollectionEquality().hash(fs24),
        const DeepCollectionEquality().hash(fs18),
        const DeepCollectionEquality().hash(button18),
        const DeepCollectionEquality().hash(bodyText16),
        const DeepCollectionEquality().hash(caption14));
  }
}

extension ThemeTextStylesBuildContext on BuildContext {
  ThemeTextStyles get themeTextStyles =>
      Theme.of(this).extension<ThemeTextStyles>()!;
}

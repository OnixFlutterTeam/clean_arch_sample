// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_text_styles.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
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

  static final AppTextStyles light = AppTextStyles(
    fs28: _$AppTextStyles.fs28[0],
    fs24: _$AppTextStyles.fs24[0],
    fs18: _$AppTextStyles.fs18[0],
    button18: _$AppTextStyles.button18[0],
    bodyText16: _$AppTextStyles.bodyText16[0],
    caption14: _$AppTextStyles.caption14[0],
  );

  static final AppTextStyles dark = AppTextStyles(
    fs28: _$AppTextStyles.fs28[1],
    fs24: _$AppTextStyles.fs24[1],
    fs18: _$AppTextStyles.fs18[1],
    button18: _$AppTextStyles.button18[1],
    bodyText16: _$AppTextStyles.bodyText16[1],
    caption14: _$AppTextStyles.caption14[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? fs28,
    TextStyle? fs24,
    TextStyle? fs18,
    TextStyle? button18,
    TextStyle? bodyText16,
    TextStyle? caption14,
  }) {
    return AppTextStyles(
      fs28: fs28 ?? this.fs28,
      fs24: fs24 ?? this.fs24,
      fs18: fs18 ?? this.fs18,
      button18: button18 ?? this.button18,
      bodyText16: bodyText16 ?? this.bodyText16,
      caption14: caption14 ?? this.caption14,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this;
    return AppTextStyles(
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
            other is AppTextStyles &&
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

extension AppTextStylesBuildContextProps on BuildContext {
  AppTextStyles get _appTextStyles =>
      Theme.of(this).extension<AppTextStyles>()!;
  TextStyle get fs28 => _appTextStyles.fs28;
  TextStyle get fs24 => _appTextStyles.fs24;
  TextStyle get fs18 => _appTextStyles.fs18;
  TextStyle get button18 => _appTextStyles.button18;
  TextStyle get bodyText16 => _appTextStyles.bodyText16;
  TextStyle get caption14 => _appTextStyles.caption14;
}

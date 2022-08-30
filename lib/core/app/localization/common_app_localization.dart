import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

AppLocalizations str(BuildContext context) => AppLocalizations.of(context)!;


extension LocalizationExtension on BuildContext{
  str() =>  AppLocalizations.of(this)!;
}
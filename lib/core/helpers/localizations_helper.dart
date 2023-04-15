import 'package:flutter/material.dart';
import 'package:pokemon_flutter/l10n/l10n.dart';

class Strings {
  static AppLocalizations of(BuildContext context) {
    final localizations =
        Localizations.of<AppLocalizations>(context, AppLocalizations);

    if (localizations != null) {
      return localizations;
    } else {
      throw Exception();
    }
  }
}

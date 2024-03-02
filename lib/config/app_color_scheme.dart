import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

class AppColors {
  static Color primarySeedColor = const Color(0xFF192256);
  static Color secondarySeedColor = const Color(0xFF9C254D);

  static final ColorScheme schemeLight = SeedColorScheme.fromSeeds(
    brightness: Brightness.light,
    primaryKey: primarySeedColor,
    secondaryKey: secondarySeedColor,
    tones: FlexTones.vivid(Brightness.light),
  );

  static final ColorScheme schemeDark = SeedColorScheme.fromSeeds(
    brightness: Brightness.dark,
    primaryKey: primarySeedColor,
    secondaryKey: secondarySeedColor,
    tones: FlexTones.vivid(Brightness.dark),
  );

  static final appColorSchemeLight = schemeLight;
  static final appColorSchemeDark = schemeDark;
}

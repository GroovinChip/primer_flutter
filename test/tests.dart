import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:primer/primer.dart';

void main() {
  group('Theme', () {
    test('isDark getter works correctly', () async {
      final theme = PrimerThemeData.light();
      expect(theme.isDark, false);

      final themeDark = PrimerThemeData.dark();
      expect(themeDark.isDark, true);
    });
  });

  group('PrimerTypography', () {
    test('PrimerTypography.smallBold has correct properties', () {
      expect(const PrimerTypography().smallBold.fontSize, 12);
      expect(const PrimerTypography().smallBold.fontWeight, FontWeight.w600);
    });

    test('PrimerTypography.toString() works correctly', () {
      print(const PrimerTypography().toString());
    });
  });
}

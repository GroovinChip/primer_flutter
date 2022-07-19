import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:primer_flutter/primer_flutter.dart';

class ThemeModeVariant extends TestVariant<ThemeMode> {
  ThemeMode? variant;

  @override
  String describeValue(ThemeMode value) {
    return variant.toString();
  }

  @override
  Future<Object?> setUp(ThemeMode value) async {
    variant = value;
    return variant;
  }

  @override
  Future<void> tearDown(ThemeMode value, covariant Object memento) async {
    variant = null;
  }

  @override
  Iterable<ThemeMode> get values {
    return [
      ThemeMode.light,
      ThemeMode.dark,
    ];
  }
}

void main() {
  group('Theme tests', () {
    test('isDark getter works correctly for standard themes', () {
      final theme = PrimerThemeData.light();
      expect(theme.isDark, false);

      final themeDark = PrimerThemeData.dark();
      expect(themeDark.isDark, true);
    });

    test('isDark getter works for accessibility themes', () {
      final highContrastLight = PrimerThemeData.highContrastLight();
      expect(highContrastLight.isDark, false);

      final highContrastDark = PrimerThemeData.highContrastDark();
      expect(highContrastDark.isDark, true);

      final colorBlindLight = PrimerThemeData.lightColorblind();
      expect(colorBlindLight.isDark, false);

      final colorBlindDark = PrimerThemeData.darkColorblind();
      expect(colorBlindDark.isDark, true);

      final tritanopiaLight = PrimerThemeData.lightTritanopia();
      expect(tritanopiaLight.isDark, false);

      final tritanopiaDark = PrimerThemeData.darkTritanopia();
      expect(tritanopiaDark.isDark, true);

      final dimmed = PrimerThemeData.dimmed();
      expect(dimmed.isDark, true);
    });
  });

  group('PrimerApp tests', () {
    final themeModeVariant = ThemeModeVariant();

    testWidgets(
      'PrimerApp creates standard themes',
      (tester) async {
        late BuildContext appContext;
        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeModeVariant.variant,
            builder: (context, child) => PrimerApp(
              parentBrightness: Theme.of(context).brightness,
              child: child!,
            ),
            home: Builder(
              builder: (context) {
                appContext = context;
                return const Scaffold();
              },
            ),
          ),
        );

        final theme = PrimerTheme.of(appContext);
        if (!theme.isDark) {
          expect(theme.isDark, false);
          expect(theme.foreground.dflt, const Foreground().dflt);
        } else {
          expect(theme.isDark, true);
          expect(theme.foreground.dflt, Foreground.dark().dflt);
        }
      },
      variant: themeModeVariant,
    );

    testWidgets(
      'PrimerApp creates high-contrast accessibility themes',
      (tester) async {
        late BuildContext appContext;
        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeModeVariant.variant,
            builder: (context, child) => PrimerApp(
              parentBrightness: Theme.of(context).brightness,
              accessibilityTheme: AccessibilityTheme.highContrast,
              child: child!,
            ),
            home: Builder(
              builder: (context) {
                appContext = context;
                return const Scaffold();
              },
            ),
          ),
        );

        final theme = PrimerTheme.of(appContext);
        if (!theme.isDark) {
          expect(theme.isDark, false);
          expect(theme.foreground.dflt, Foreground.lightHighContrast().dflt);
        } else {
          expect(theme.isDark, true);
          expect(theme.foreground.dflt, Foreground.darkHighContrast().dflt);
        }
      },
      variant: themeModeVariant,
    );

    testWidgets(
      'PrimerApp creates colorblind accessibility themes',
      (tester) async {
        late BuildContext appContext;
        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeModeVariant.variant,
            builder: (context, child) => PrimerApp(
              parentBrightness: Theme.of(context).brightness,
              accessibilityTheme: AccessibilityTheme.colorBlind,
              child: child!,
            ),
            home: Builder(
              builder: (context) {
                appContext = context;
                return const Scaffold();
              },
            ),
          ),
        );

        final theme = PrimerTheme.of(appContext);
        if (!theme.isDark) {
          expect(theme.isDark, false);
          expect(theme.foreground.dflt, Foreground.lightColorblind().dflt);
        } else {
          expect(theme.isDark, true);
          expect(theme.foreground.dflt, Foreground.darkColorblind().dflt);
        }
      },
      variant: themeModeVariant,
    );

    testWidgets(
      'PrimerApp creates tritanopia accessibility themes',
      (tester) async {
        late BuildContext appContext;
        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeModeVariant.variant,
            builder: (context, child) => PrimerApp(
              parentBrightness: Theme.of(context).brightness,
              accessibilityTheme: AccessibilityTheme.tritanopia,
              child: child!,
            ),
            home: Builder(
              builder: (context) {
                appContext = context;
                return const Scaffold();
              },
            ),
          ),
        );

        final theme = PrimerTheme.of(appContext);
        if (!theme.isDark) {
          expect(theme.isDark, false);
          expect(theme.foreground.dflt, Foreground.lightTritanopia().dflt);
        } else {
          expect(theme.isDark, true);
          expect(theme.foreground.dflt, Foreground.darkTritanopia().dflt);
        }
      },
      variant: themeModeVariant,
    );

    testWidgets(
      'PrimerApp creates dimmed accessibility theme & standard light theme',
      (tester) async {
        late BuildContext appContext;
        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeModeVariant.variant,
            builder: (context, child) => PrimerApp(
              parentBrightness: Theme.of(context).brightness,
              accessibilityTheme: AccessibilityTheme.dimmed,
              child: child!,
            ),
            home: Builder(
              builder: (context) {
                appContext = context;
                return const Scaffold();
              },
            ),
          ),
        );

        final theme = PrimerTheme.of(appContext);
        if (!theme.isDark) {
          expect(theme.isDark, false);
          expect(theme.foreground.dflt, const Foreground().dflt);
        } else {
          expect(theme.isDark, true);
          expect(theme.foreground.dflt, Foreground.dimmed().dflt);
        }
      },
      variant: themeModeVariant,
    );
  });
}

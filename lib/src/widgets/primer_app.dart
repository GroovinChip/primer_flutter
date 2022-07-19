import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:primer_flutter/primer_flutter.dart';

/// Enumerates the types of accessibility themes that can be used in a
/// [PrimerApp].
enum AccessibilityTheme {
  highContrast,
  colorBlind,
  tritanopia,
  dimmed,
  none,
}

/// {@template primerApp}
/// A high-level convenience widget that provides automatic Primer theme
/// configurations based on the [Brightness] it is provided with.
///
/// The preferred way to use this widget is via the `builder` property of "root"
/// widgets such as `MaterialApp`. Simply wrap the child with a [PrimerApp]
/// and provide the [parentBrightness] by calling the `.of(context)` method
/// for the theme that corresponds to your root widget. The reason that this
/// is the preferred usage is because the `builder` provides the highest level
/// access to a [BuildContext] that can be used to retrieve the theme properties
/// set by the root app. (The `.light()` and `.dark()` factory constructors of
/// various platform `ThemeData` and the corresponding `theme` and `darkTheme`
/// properties of their respective root apps are useful shortcuts to defining
/// the brightness of a given theme.)
///
/// `MaterialApp` example:
/// ```dart
/// class MyApp extends StatelessWidget {
///   const MyApp({Key? key}) : super(key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return MaterialApp(
///       title: 'Primer Material Demo',
///       builder: (context, child) {
///         return PrimerApp(
///           parentBrightness: Theme.of(context).brightness,
///           child: child!,
///         );
///       },
///       theme: ThemeData.light(),
///       darkTheme: ThemeData.dark(),
///       themeMode: ThemeMode.system,
///       home: const MyHomePage(),
///     );
///   }
/// }
/// ```
///
/// `MacosApp` example:
/// ```dart
/// class MyApp extends StatelessWidget {
///   const MyApp({Key? key}) : super(key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return MacosApp(
///       title: 'Primer macOS Demo',
///       builder: (context, child) {
///         return PrimerApp(
///           parentBrightness: MacosTheme.of(context).brightness,
///           child: child!,
///         );
///       },
///       theme: MacosThemeData.light(),
///       darkTheme: MacosThemeData.dark(),
///       themeMode: ThemeMode.system,
///       home: const MyHomePage(),
///     );
///   }
/// }
/// ```
///
/// By default, [PrimerApp] will create standard light and dark themes. However,
/// you can configure [PrimerApp] to create several other pre-configured,
/// accessibility-friendly themes using the [accessibilityTheme] property.
/// Please note that only one accessibility theme can be set at a time, and that
/// if any accessibility theme other than [AccessibilityTheme.none] is set, that
/// theme will replace the standard light and dark themes.
/// {@endtemplate}
class PrimerApp extends StatelessWidget {
  /// {@macro primerApp}
  const PrimerApp({
    Key? key,
    required this.child,
    required this.parentBrightness,
    this.accessibilityTheme = AccessibilityTheme.none,
  }) : super(key: key);

  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  /// The [Brightness] of the parent widget.
  ///
  /// Used to determine the type of [PrimerThemeData] to create.
  final Brightness parentBrightness;

  /// The accessibility theme to use.
  ///
  /// Defaults to [AccessibilityTheme.none].
  final AccessibilityTheme accessibilityTheme;

  bool get _isDark => parentBrightness == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    PrimerThemeData? theme;
    switch (accessibilityTheme) {
      case AccessibilityTheme.highContrast:
        theme = _isDark
            ? PrimerThemeData.highContrastDark()
            : PrimerThemeData.highContrastLight();
        break;
      case AccessibilityTheme.colorBlind:
        theme = _isDark
            ? PrimerThemeData.darkColorblind()
            : PrimerThemeData.lightColorblind();
        break;
      case AccessibilityTheme.tritanopia:
        theme = _isDark
            ? PrimerThemeData.darkTritanopia()
            : PrimerThemeData.lightTritanopia();
        break;
      case AccessibilityTheme.dimmed:
        theme = _isDark ? PrimerThemeData.dimmed() : PrimerThemeData.light();
        break;
      case AccessibilityTheme.none:
        theme = _isDark ? PrimerThemeData.dark() : PrimerThemeData.light();
        break;
    }

    return PrimerTheme(
      data: theme,
      child: DefaultTextStyle(
        // Sets the default text style of descendant widgets, the color of which
        // is determined by the theme created above.
        style: theme.typography.normal,
        child: child,
      ),
    );
  }
}

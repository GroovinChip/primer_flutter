import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:primer/primer.dart';

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
/// {@endtemplate}
class PrimerApp extends StatelessWidget {
  /// {@macro primerApp}
  const PrimerApp({
    Key? key,
    required this.child,
    required this.parentBrightness,
  }) : super(key: key);

  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  /// The [Brightness] of the parent widget.
  ///
  /// Used to determine the type of [PrimerThemeData] to create.
  final Brightness parentBrightness;

  @override
  Widget build(BuildContext context) {
    // Creates a PrimerThemeData based on the provided brightness.
    final theme = parentBrightness == Brightness.dark
        ? PrimerThemeData.dark()
        : PrimerThemeData.light();
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

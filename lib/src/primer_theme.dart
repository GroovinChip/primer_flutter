import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' hide Border;
import 'package:primer/src/colors/functional_colors.dart';
import 'package:primer/src/text_styles.dart';

/// {@template primerTheme}
/// Applies a Primer-style theme to descendant widgets.
///
/// Descendant widgets can retrieve the current [PrimerThemeData] by calling
/// [PrimerThemeData.of]. An [InheritedWidget] dependency is created when
/// an ancestor [PrimerThemeData] is retrieved via [PrimerThemeData.of].
///
/// See also:
///
///  * [PrimerThemeData], which specifies the theme's visual styling
/// {@endtemplate}
class PrimerTheme extends StatelessWidget {
  /// {@macro primerTheme}
  const PrimerTheme({
    super.key,
    required this.data,
    required this.child,
  });

  /// The [PrimerThemeData] styling for this theme.
  final PrimerThemeData data;

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  /// Retrieves the [PrimerThemeData] from the closest ancestor [PrimerTheme]
  /// widget, or a default [PrimerThemeData] if no [PrimerTheme] ancestor
  /// exists.
  ///
  /// Resolves all the colors defined in that [PrimerThemeData] against the
  /// given [BuildContext] on a best-effort basis.
  static PrimerThemeData of(BuildContext context) {
    final theme = context.findAncestorWidgetOfExactType<PrimerTheme>();
    return theme?.data ?? PrimerThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedPrimerTheme(
      theme: this,
      child: child,
    );
  }
}

class _InheritedPrimerTheme extends InheritedWidget {
  const _InheritedPrimerTheme({
    required this.theme,
    required super.child,
  });

  final PrimerTheme theme;

  @override
  bool updateShouldNotify(_InheritedPrimerTheme old) =>
      theme.data != old.theme.data;
}

/// {@template primerThemeData}
/// Defines the configuration of the overall visual [PrimerTheme] for a
/// widget subtree.
///
/// Widgets whose appearance should align with the overall theme can obtain the
/// current theme's configuration with [PrimerTheme.of].
///
/// The [PrimerThemeData] constructor automatically creates a theme that
/// accurately matches Primer's style guidelines. Therefore, it is rarely
/// necessary to provide values to [PrimerThemeData] directly. Rather, prefer
/// using the [PrimerThemeData.light] or [PrimerThemeData.dark] constructors
/// to create a [PrimerThemeData] that accurately matches Primer's style
/// guidelines for light and dark themes, respectively.
/// {@endtemplate}
class PrimerThemeData with Diagnosticable {
  /// {@macro primerThemeData}
  factory PrimerThemeData({
    Brightness? brightness,
    Foreground? foreground,
    Canvas? canvas,
    Border? border,
    Neutral? neutral,
    Accent? accent,
    Success? success,
    Attention? attention,
    Severe? severe,
    Danger? danger,
    Open? open,
    Closed? closed,
    Done? done,
    Sponsors? sponsors,
    PrimerTypography? typography,
  }) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _brightness = brightness ?? Brightness.light;
    final isDark = _brightness == Brightness.dark;

    foreground ??= isDark ? Foreground.dark() : const Foreground();
    canvas ??= isDark ? Canvas.dark() : const Canvas();
    border ??= isDark ? Border.dark() : Border.light();
    neutral ??= isDark ? Neutral.dark() : Neutral.light();
    accent ??= isDark ? Accent.dark() : const Accent();
    success ??= isDark ? Success.dark() : Success.light();
    attention ??= isDark ? Attention.dark() : Attention.light();
    severe ??= isDark ? Severe.dark() : Severe.light();
    danger ??= isDark ? Danger.dark() : Danger.light();
    open ??= isDark ? Open.dark() : Open.light();
    closed ??= isDark ? Closed.dark() : Closed.light();
    done ??= isDark ? Done.dark() : Done.light();
    sponsors ??= isDark ? Sponsors.dark() : Sponsors.light();
    typography ??= isDark ? PrimerTypography.dark() : PrimerTypography.light();

    return PrimerThemeData.raw(
      brightness: _brightness,
      foreground: foreground,
      canvas: canvas,
      border: border,
      neutral: neutral,
      accent: accent,
      success: success,
      attention: attention,
      severe: severe,
      danger: danger,
      open: open,
      closed: closed,
      done: done,
      sponsors: sponsors,
      typography: typography,
    );
  }

  const PrimerThemeData.raw({
    required this.brightness,
    required this.foreground,
    required this.canvas,
    required this.border,
    required this.neutral,
    required this.accent,
    required this.success,
    required this.attention,
    required this.severe,
    required this.danger,
    required this.open,
    required this.closed,
    required this.done,
    required this.sponsors,
    required this.typography,
  });

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// light themes.
  factory PrimerThemeData.light() => PrimerThemeData(
        brightness: Brightness.light,
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// dark themes.
  factory PrimerThemeData.dark() => PrimerThemeData(
        brightness: Brightness.dark,
      );

  factory PrimerThemeData.fallback() => PrimerThemeData.light();

  bool get isDark => brightness == Brightness.dark;

  /// The overall brightness of this theme.
  final Brightness brightness;

  /// The foreground colors of this theme.
  ///
  /// {@macro foreground}
  final Foreground foreground;

  /// The canvas colors of this theme.
  ///
  /// {@macro canvas}
  final Canvas canvas;

  /// The border colors of this theme.
  ///
  /// {@macro border}
  final Border border;

  /// The neutral colors of this theme.
  ///
  /// {@macro neutral}
  final Neutral neutral;

  /// The accent colors of this theme.
  ///
  /// {@macro accent}
  final Accent accent;

  /// The success colors of this theme.
  ///
  /// {@macro success}
  final Success success;

  /// The attention colors of this theme.
  ///
  /// {@macro attention}
  final Attention attention;

  /// The severe colors of this theme.
  ///
  /// {@macro severe}
  final Severe severe;

  /// The danger colors of this theme.
  ///
  /// {@macro danger}
  final Danger danger;

  /// The open colors of this theme.
  ///
  /// {@macro open}
  final Open open;

  /// The closed colors of this theme.
  ///
  /// {@macro closed}
  final Closed closed;

  /// The done colors of this theme.
  ///
  /// {@macro done}
  final Done done;

  /// The sponsors colors of this theme.
  ///
  /// {@macro sponsors}
  final Sponsors sponsors;

  /// The typography for this theme.
  ///
  /// {@macro typography}
  final PrimerTypography typography;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<Brightness>('brightness', brightness));
    properties.add(DiagnosticsProperty<Foreground>('foreground', foreground));
    properties.add(DiagnosticsProperty<Canvas>('canvas', canvas));
    properties.add(DiagnosticsProperty<Border>('border', border));
    properties.add(DiagnosticsProperty<Neutral>('neutral', neutral));
    properties.add(DiagnosticsProperty<Accent>('accent', accent));
    properties.add(DiagnosticsProperty<Success>('success', success));
    properties.add(DiagnosticsProperty<Attention>('attention', attention));
    properties.add(DiagnosticsProperty<Severe>('severe', severe));
    properties.add(DiagnosticsProperty<Danger>('danger', danger));
    properties.add(DiagnosticsProperty<Open>('open', open));
    properties.add(DiagnosticsProperty<Closed>('closed', closed));
    properties.add(DiagnosticsProperty<Done>('done', done));
    properties.add(DiagnosticsProperty<Sponsors>('sponsors', sponsors));
    properties
        .add(DiagnosticsProperty<PrimerTypography>('typography', typography));
  }
}

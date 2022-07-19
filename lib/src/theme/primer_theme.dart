import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' hide Border;
import 'package:primer/src/colors/functional_colors.dart';
import 'package:primer/src/theme/text_styles.dart';

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
///  * [PrimerApp], a high-level widget which creates a [PrimerThemeData]
///  based on the current brightness of an app.
/// {@endtemplate}
class PrimerTheme extends StatelessWidget with Diagnosticable {
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<PrimerThemeData>('data', data));
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
  /// high-contrast light themes.
  factory PrimerThemeData.highContrastLight() => PrimerThemeData(
        brightness: Brightness.light,
        foreground: Foreground.lightHighContrast(),
        canvas: Canvas.lightHighContrast(),
        border: Border.lightHighContrast(),
        neutral: Neutral.lightHighContrast(),
        accent: Accent.lightHighContrast(),
        success: Success.lightHighContrast(),
        attention: Attention.lightHighContrast(),
        severe: Severe.lightHighContrast(),
        danger: Danger.lightHighContrast(),
        open: Open.lightHighContrast(),
        closed: Closed.lightHighContrast(),
        done: Done.lightHighContrast(),
        sponsors: Sponsors.lightHighContrast(),
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// colorblind-friendly light themes.
  factory PrimerThemeData.lightColorblind() => PrimerThemeData(
        brightness: Brightness.light,
        foreground: Foreground.lightColorblind(),
        canvas: Canvas.lightColorblind(),
        border: Border.lightColorblind(),
        neutral: Neutral.lightColorblind(),
        accent: Accent.lightColorblind(),
        success: Success.lightColorblind(),
        attention: Attention.lightColorblind(),
        severe: Severe.lightColorblind(),
        danger: Danger.lightColorblind(),
        open: Open.lightColorblind(),
        closed: Closed.lightColorblind(),
        done: Done.lightColorblind(),
        sponsors: Sponsors.lightColorblind(),
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// light tritanopia themes.
  factory PrimerThemeData.lightTritanopia() => PrimerThemeData(
        brightness: Brightness.light,
        foreground: Foreground.lightTritanopia(),
        canvas: Canvas.lightTritanopia(),
        border: Border.lightTritanopia(),
        neutral: Neutral.lightTritanopia(),
        accent: Accent.lightTritanopia(),
        success: Success.lightTritanopia(),
        attention: Attention.lightTritanopia(),
        severe: Severe.lightTritanopia(),
        danger: Danger.lightTritanopia(),
        open: Open.lightTritanopia(),
        closed: Closed.lightTritanopia(),
        done: Done.lightTritanopia(),
        sponsors: Sponsors.lightTritanopia(),
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// dark themes.
  factory PrimerThemeData.dark() => PrimerThemeData(
        brightness: Brightness.dark,
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// high-contrast dark themes.
  factory PrimerThemeData.highContrastDark() => PrimerThemeData(
        brightness: Brightness.dark,
        foreground: Foreground.darkHighContrast(),
        canvas: Canvas.darkHighContrast(),
        border: Border.darkHighContrast(),
        neutral: Neutral.darkHighContrast(),
        accent: Accent.darkHighContrast(),
        success: Success.darkHighContrast(),
        attention: Attention.darkHighContrast(),
        severe: Severe.darkHighContrast(),
        danger: Danger.darkHighContrast(),
        open: Open.darkHighContrast(),
        closed: Closed.darkHighContrast(),
        done: Done.darkHighContrast(),
        sponsors: Sponsors.darkHighContrast(),
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// colorblind-friendly dark themes.
  factory PrimerThemeData.darkColorblind() => PrimerThemeData(
        brightness: Brightness.dark,
        foreground: Foreground.darkColorblind(),
        canvas: Canvas.darkColorblind(),
        border: Border.darkColorblind(),
        neutral: Neutral.darkColorblind(),
        accent: Accent.darkColorblind(),
        success: Success.darkColorblind(),
        attention: Attention.darkColorblind(),
        severe: Severe.darkColorblind(),
        danger: Danger.darkColorblind(),
        open: Open.darkColorblind(),
        closed: Closed.darkColorblind(),
        done: Done.darkColorblind(),
        sponsors: Sponsors.darkColorblind(),
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// dark tritanopia themes.
  factory PrimerThemeData.darkTritanopia() => PrimerThemeData(
        brightness: Brightness.dark,
        foreground: Foreground.darkTritanopia(),
        canvas: Canvas.darkTritanopia(),
        border: Border.darkTritanopia(),
        neutral: Neutral.darkTritanopia(),
        accent: Accent.darkTritanopia(),
        success: Success.darkTritanopia(),
        attention: Attention.darkTritanopia(),
        severe: Severe.darkTritanopia(),
        danger: Danger.darkTritanopia(),
        open: Open.darkTritanopia(),
        closed: Closed.darkTritanopia(),
        done: Done.darkTritanopia(),
        sponsors: Sponsors.darkTritanopia(),
      );

  /// Creates a [PrimerThemeData] that matches Primer's style guidelines for
  /// dimmed dark themes.
  factory PrimerThemeData.dimmed() => PrimerThemeData(
        brightness: Brightness.dark,
        foreground: Foreground.dimmed(),
        canvas: Canvas.dimmed(),
        border: Border.dimmed(),
        neutral: Neutral.dimmed(),
        accent: Accent.dimmed(),
        success: Success.dimmed(),
        attention: Attention.dimmed(),
        severe: Severe.dimmed(),
        danger: Danger.dimmed(),
        open: Open.dimmed(),
        closed: Closed.dimmed(),
        done: Done.dimmed(),
        sponsors: Sponsors.dimmed(),
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

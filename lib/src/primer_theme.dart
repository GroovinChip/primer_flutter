import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' hide Border;
import 'package:primer/src/colors.dart';
import 'package:primer/src/text_styles.dart';

class PrimerTheme extends StatelessWidget {
  const PrimerTheme({
    super.key,
    required this.data,
    required this.child,
  });

  final PrimerThemeData data;
  final Widget child;

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

class PrimerThemeData with Diagnosticable {
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
    border ??= isDark ? Border.dark() : const Border();
    neutral ??= isDark ? Neutral.dark() : const Neutral();
    accent ??= isDark ? Accent.dark() : const Accent();
    success ??= isDark ? Success.dark() : const Success();
    attention ??= isDark ? Attention.dark() : const Attention();
    severe ??= isDark ? Severe.dark() : const Severe();
    danger ??= isDark ? Danger.dark() : const Danger();
    open ??= isDark ? Open.dark() : const Open();
    closed ??= isDark ? Closed.dark() : const Closed();
    done ??= isDark ? Done.dark() : const Done();
    sponsors ??= isDark ? Sponsors.dark() : const Sponsors();
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

  factory PrimerThemeData.light() => PrimerThemeData(
        brightness: Brightness.light,
      );

  factory PrimerThemeData.dark() => PrimerThemeData(
        brightness: Brightness.dark,
      );

  factory PrimerThemeData.fallback() => PrimerThemeData.light();

  bool get isDark => brightness == Brightness.dark;

  final Brightness brightness;
  final Foreground foreground;
  final Canvas canvas;
  final Border border;
  final Neutral neutral;
  final Accent accent;
  final Success success;
  final Attention attention;
  final Severe severe;
  final Danger danger;
  final Open open;
  final Closed closed;
  final Done done;
  final Sponsors sponsors;
  final PrimerTypography typography;
}

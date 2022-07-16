import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:primer/primer.dart';

/// {@template primerTypography}
/// A set of text styles that match Primer's typographic specifications.
///
/// It is not necessary to use this class directly. Instead, use the
/// [PrimerThemeData.typography] built into [PrimerThemeData] in conjunction
/// with the [PrimerTheme] InheritedWidget.
/// {@endtemplate}
class PrimerTypography with Diagnosticable {
  /// {@macro primerTypography}
  const PrimerTypography({
    this.normal = const TextStyle(),
    this.italic = const TextStyle(
      fontStyle: FontStyle.italic,
    ),
    this.bold = const TextStyle(
      fontWeight: FontWeight.w600,
    ),
    this.semiBold = const TextStyle(
      fontWeight: FontWeight.w500,
    ),
    this.light = const TextStyle(
      fontWeight: FontWeight.w300,
    ),
    this.underline = const TextStyle(
      decoration: TextDecoration.underline,
    ),
    this.emphasized = const TextStyle(
      fontWeight: FontWeight.w600,
    ),
    this.small = const TextStyle(
      fontSize: 12.0,
    ),
    this.smallBold = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
    ),
    this.lead = const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w300,
    ),
    this.mono = const TextStyle(
      fontFamily: 'monospace',
      fontSize: 12.0,
    ),
    this.h1 = const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
    ),
    this.h2 = const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
    ),
    this.h3 = const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
    this.h4 = const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    this.h5 = const TextStyle(
      fontWeight: FontWeight.w600,
    ),
    this.h6 = const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
    ),
  });

  factory PrimerTypography.light({Color? color}) {
    return _applyTextColor(
        const PrimerTypography(), color ?? ScaleColorsLight.gray9);
  }

  factory PrimerTypography.dark({Color? color}) {
    _isDark = true;
    return _applyTextColor(
        const PrimerTypography(), color ?? ScaleColorsDark.gray1);
  }

  static bool _isDark = false;

  /// A plain, unmodified [TextStyle].
  final TextStyle normal;

  /// A [TextStyle] with a fontStyle of [FontStyle.italic].
  final TextStyle italic;

  /// A [TextStyle] with a fontWeight of [FontWeight.w600].
  final TextStyle bold;

  /// A [TextStyle] with a fontWeight of [FontWeight.w500].
  final TextStyle semiBold;

  /// A [TextStyle] with a fontWeight of [FontWeight.w300].
  final TextStyle light;

  /// A [TextStyle] with a decoration of [TextDecoration.underline].
  final TextStyle underline;

  /// A [TextStyle] with a fontWeight of [FontWeight.w600].
  final TextStyle emphasized;

  /// A [TextStyle] with a fontSize of `12.0`.
  final TextStyle small;

  /// A [TextStyle] with a fontWeight of [FontWeight.w600] and a fontSize of
  /// `12.0`.
  final TextStyle smallBold;

  /// A [TextStyle] with a fontSize of `20.0` and a fontWeight of
  /// [FontWeight.w300].
  final TextStyle lead;

  /// A [TextStyle] with a fontFamily of `monospace` and a fontSize of `12.0`.
  final TextStyle mono;

  /// A [TextStyle] with a fontSize of `32.0` and a fontWeight of
  /// [FontWeight.w600].
  final TextStyle h1;

  /// A [TextStyle] with a fontSize of `24.0` and a fontWeight of
  /// [FontWeight.w600].
  final TextStyle h2;

  /// A [TextStyle] with a fontSize of `20.0` and a fontWeight of
  /// [FontWeight.w600].
  final TextStyle h3;

  /// A [TextStyle] with a fontSize of `16.0` and a fontWeight of
  /// [FontWeight.w600].
  final TextStyle h4;

  /// A [TextStyle] with a default fontSize and a fontWeight of
  /// [FontWeight.w600].
  final TextStyle h5;

  /// A [TextStyle] with a fontSize of `12.0` and a fontWeight of
  /// [FontWeight.w600].
  final TextStyle h6;

  /// Applies shadows to the given [style] according to Primer guidelines.
  TextStyle withShadow({
    required TextStyle style,
    required Color backgroundColor,
  }) {
    return backgroundColor.computeLuminance() > 0.5
        ? style.copyWith(
            shadows: const [
              Shadow(
                color: Color.fromRGBO(27, 31, 35, 0.75),
              ),
              Shadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
              ),
            ],
          )
        : style.copyWith(
            shadows: const [
              Shadow(
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
            ],
          );
  }

  /// Copies this [PrimerTypography] into another and applies the given values,
  /// if specified.
  PrimerTypography copyWith({
    TextStyle? normal,
    TextStyle? italic,
    TextStyle? bold,
    TextStyle? semiBold,
    TextStyle? light,
    TextStyle? underline,
    TextStyle? emphasized,
    TextStyle? small,
    TextStyle? smallBold,
    TextStyle? lead,
    TextStyle? mono,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,
  }) {
    return PrimerTypography(
      normal: normal ?? this.normal,
      italic: italic ?? this.italic,
      bold: bold ?? this.bold,
      semiBold: semiBold ?? this.semiBold,
      light: light ?? this.light,
      underline: underline ?? this.underline,
      emphasized: emphasized ?? this.emphasized,
      small: small ?? this.small,
      smallBold: smallBold ?? this.smallBold,
      lead: lead ?? this.lead,
      mono: mono ?? this.mono,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      h6: h6 ?? this.h6,
    );
  }

  /// Merges one [PrimerTypography] into another.
  PrimerTypography merge(PrimerTypography? other) {
    if (other == null) {
      return this;
    }

    return copyWith(
      normal: other.normal,
      italic: other.italic,
      semiBold: other.semiBold,
      light: other.light,
      bold: other.bold,
      underline: other.underline,
      emphasized: other.emphasized,
      small: other.small,
      smallBold: other.smallBold,
      lead: other.lead,
      mono: other.mono,
      h1: other.h1,
      h2: other.h2,
      h3: other.h3,
      h4: other.h4,
      h5: other.h5,
      h6: other.h6,
    );
  }

  static PrimerTypography _applyTextColor(
    PrimerTypography typography,
    Color color,
  ) {
    return PrimerTypography(
      normal: typography.normal.apply(color: color),
      italic: typography.italic.apply(color: color),
      bold: typography.bold.apply(color: color),
      semiBold: typography.semiBold.apply(color: color),
      light: typography.light.apply(color: color),
      underline: typography.underline.apply(color: color),
      emphasized: typography.emphasized.apply(color: color),
      small: typography.small.apply(color: color),
      smallBold: typography.smallBold.apply(color: color),
      lead: typography.lead.apply(color: color),
      mono: typography.mono.apply(color: color),
      h1: typography.h1.apply(color: color),
      h2: typography.h2.apply(color: color),
      h3: typography.h3.apply(color: color),
      h4: typography.h4.apply(color: color),
      h5: typography.h5.apply(color: color),
      h6: typography.h6.apply(color: color),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrimerTypography &&
          runtimeType == other.runtimeType &&
          normal == other.normal &&
          italic == other.italic &&
          bold == other.bold &&
          semiBold == other.semiBold &&
          light == other.light &&
          underline == other.underline &&
          emphasized == other.emphasized &&
          small == other.small &&
          smallBold == other.smallBold &&
          lead == other.lead &&
          mono == other.mono &&
          h1 == other.h1 &&
          h2 == other.h2 &&
          h3 == other.h3 &&
          h4 == other.h4 &&
          h5 == other.h5 &&
          h6 == other.h6;

  @override
  int get hashCode =>
      normal.hashCode ^
      italic.hashCode ^
      bold.hashCode ^
      semiBold.hashCode ^
      light.hashCode ^
      underline.hashCode ^
      emphasized.hashCode ^
      small.hashCode ^
      smallBold.hashCode ^
      lead.hashCode ^
      mono.hashCode ^
      h1.hashCode ^
      h2.hashCode ^
      h3.hashCode ^
      h4.hashCode ^
      h5.hashCode ^
      h6.hashCode;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isDark', _isDark));
  }
}

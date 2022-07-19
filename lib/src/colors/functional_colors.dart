import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:primer_flutter/primer_flutter.dart';

/// {@template foreground}
/// The primary color for text and icons in any given interface.
///
/// Use the default constructor for colors that are appropriate for a light
/// theme, and [Foreground.dark] for colors that are appropriate for a dark
/// theme.
/// {@endtemplate}
class Foreground with Diagnosticable {
  /// {@macro foreground}
  const Foreground({
    this.dflt = ScaleColorsLight.gray9,
    this.muted = ScaleColorsLight.gray6,
    this.subtle = ScaleColorsLight.gray5,
    this.onEmphasis = ScaleColorsLight.white,
  });

  /// The dark variant of [Foreground].
  factory Foreground.dark() {
    return const Foreground(
      dflt: ScaleColorsDark.gray1,
      muted: ScaleColorsDark.gray3,
      subtle: ScaleColorsDark.gray4,
      onEmphasis: ScaleColorsDark.white,
    );
  }

  /// The variant of [Foreground] that is appropriate for a high-contrast
  /// light theme.
  factory Foreground.lightHighContrast() {
    return const Foreground(
      dflt: ScaleColorsHighContrastLight.gray9,
      muted: ScaleColorsHighContrastLight.gray9,
      subtle: ScaleColorsHighContrastLight.gray5,
      onEmphasis: ScaleColorsHighContrastLight.white,
    );
  }

  /// The variant of [Foreground] that is appropriate for a high-contrast
  /// dark theme.
  factory Foreground.darkHighContrast() {
    return const Foreground(
      dflt: ScaleColorsHighContrastDark.gray1,
      muted: ScaleColorsHighContrastDark.gray1,
      subtle: ScaleColorsHighContrastDark.gray4,
      onEmphasis: ScaleColorsHighContrastDark.gray9,
    );
  }

  /// The variant of [Foreground] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Foreground.lightColorblind() {
    return const Foreground(
      dflt: ScaleColorsColorblindLight.gray9,
      muted: ScaleColorsColorblindLight.gray6,
      subtle: ScaleColorsColorblindLight.gray5,
      onEmphasis: ScaleColorsColorblindLight.white,
    );
  }

  /// The variant of [Foreground] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Foreground.darkColorblind() {
    return const Foreground(
      dflt: ScaleColorsColorblindDark.gray1,
      muted: ScaleColorsColorblindDark.gray3,
      subtle: ScaleColorsColorblindDark.gray4,
      onEmphasis: ScaleColorsColorblindDark.white,
    );
  }

  /// The variant of [Foreground] that is appropriate for a light tritanopia
  /// theme.
  factory Foreground.lightTritanopia() {
    return const Foreground(
      dflt: ScaleColorsTritanopiaLight.gray9,
      muted: ScaleColorsTritanopiaLight.gray6,
      subtle: ScaleColorsTritanopiaLight.gray5,
      onEmphasis: ScaleColorsTritanopiaLight.white,
    );
  }

  /// The variant of [Foreground] that is appropriate for a dark tritanopia
  /// theme.
  factory Foreground.darkTritanopia() {
    return const Foreground(
      dflt: ScaleColorsTritanopiaDark.gray1,
      muted: ScaleColorsTritanopiaDark.gray3,
      subtle: ScaleColorsTritanopiaDark.gray4,
      onEmphasis: ScaleColorsTritanopiaDark.white,
    );
  }

  /// The variant of [Foreground] that is appropriate for a dimmed dark theme.
  factory Foreground.dimmed() {
    return const Foreground(
      dflt: ScaleColorsDimmed.gray1,
      muted: ScaleColorsDark.gray3,
      subtle: ScaleColorsDark.gray4,
      onEmphasis: ScaleColorsDark.white,
    );
  }

  /// The primary color for text and icons in any given interface.
  ///
  /// It should be used for body content, titles and labels.
  final Color dflt;

  /// Use for content that is secondary or that provides additional context
  /// but is not critical to understanding the flow of an interface.
  final Color muted;

  /// Use for placeholder text, icons or decorative foregrounds.
  final Color subtle;

  /// The text color designed to combine with `emphasis` backgrounds for
  /// optimal contrast.
  final Color onEmphasis;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('dflt', dflt));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
    properties.add(ColorProperty('onEmphasis', onEmphasis));
  }
}

/// {@template canvas}
/// Colors used for the backgrounds of user interfaces.
///
/// Use the default constructor for colors appropriate for a light theme,
/// and [Canvas.dark] for colors appropriate for a dark theme.
/// {@endtemplate}
class Canvas with Diagnosticable {
  /// {@macro canvas}
  const Canvas({
    this.dflt = ScaleColorsLight.white,
    this.overlay = ScaleColorsLight.white,
    this.inset = ScaleColorsLight.gray0,
    this.subtle = ScaleColorsLight.gray0,
  });

  /// The dark variant of [Canvas].
  factory Canvas.dark() {
    return const Canvas(
      dflt: ScaleColorsDark.gray9,
      overlay: ScaleColorsDark.gray8,
      inset: ScaleColorsDark.black,
      subtle: ScaleColorsDark.gray8,
    );
  }

  /// The variant of [Canvas] that is appropriate for a high-contrast light
  /// theme.
  factory Canvas.lightHighContrast() {
    return const Canvas(
      dflt: ScaleColorsHighContrastLight.white,
      overlay: ScaleColorsHighContrastLight.white,
      inset: ScaleColorsHighContrastLight.white,
      subtle: ScaleColorsHighContrastLight.gray1,
    );
  }

  /// The variant of [Canvas] that is appropriate for a high-contrast dark
  /// theme.
  factory Canvas.darkHighContrast() {
    return const Canvas(
      dflt: ScaleColorsHighContrastDark.gray9,
      overlay: ScaleColorsHighContrastDark.gray7,
      inset: ScaleColorsHighContrastDark.black,
      subtle: ScaleColorsHighContrastDark.gray7,
    );
  }

  /// The variant of [Canvas] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Canvas.lightColorblind() {
    return const Canvas(
      dflt: ScaleColorsColorblindLight.white,
      overlay: ScaleColorsColorblindLight.white,
      inset: ScaleColorsColorblindLight.gray0,
      subtle: ScaleColorsColorblindLight.gray0,
    );
  }

  /// The variant of [Canvas] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Canvas.darkColorblind() {
    return const Canvas(
      dflt: ScaleColorsColorblindDark.gray9,
      overlay: ScaleColorsColorblindDark.gray8,
      inset: ScaleColorsColorblindDark.black,
      subtle: ScaleColorsColorblindDark.gray8,
    );
  }

  /// The variant of [Canvas] that is appropriate for a light tritanopia
  /// theme.
  factory Canvas.lightTritanopia() {
    return const Canvas(
      dflt: ScaleColorsTritanopiaLight.white,
      overlay: ScaleColorsTritanopiaLight.white,
      inset: ScaleColorsTritanopiaLight.gray0,
      subtle: ScaleColorsTritanopiaLight.gray0,
    );
  }

  /// The variant of [Canvas] that is appropriate for a dark tritanopia
  /// theme.
  factory Canvas.darkTritanopia() {
    return const Canvas(
      dflt: ScaleColorsTritanopiaDark.gray9,
      overlay: ScaleColorsTritanopiaDark.gray8,
      inset: ScaleColorsTritanopiaDark.black,
      subtle: ScaleColorsTritanopiaDark.gray8,
    );
  }

  /// The variant of [Canvas] that is appropriate for a dimmed dark theme.
  factory Canvas.dimmed() {
    return const Canvas(
      dflt: ScaleColorsDimmed.gray9,
      overlay: ScaleColorsDark.gray8,
      inset: ScaleColorsDark.black,
      subtle: ScaleColorsDark.gray8,
    );
  }

  /// The primary background color.
  final Color dflt;
  final Color overlay;

  /// Can be used instead of the default background to create a focal point,
  /// such as in conversations or activity feeds.
  final Color inset;

  /// Provides visual rest and contrast against the default background.
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('dflt', dflt));
    properties.add(ColorProperty('overlay', overlay));
    properties.add(ColorProperty('inset', inset));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template border}
/// Colors used for drawing borders.
///
/// Use the [Border.light] for colors appropriate for a light theme,
/// and [Border.dark] for colors appropriate for a dark theme.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Border with Diagnosticable {
  /// {@macro border}
  const Border({
    required this.dflt,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Border].
  factory Border.light() {
    return Border(
      dflt: ScaleColorsLight.gray2,
      muted: lighten(ScaleColorsLight.gray2, 0.03),
      subtle: ScaleColorsLight.black.withOpacity(0.15),
    );
  }

  /// The dark variant for [Border].
  factory Border.dark() {
    return Border(
      dflt: ScaleColorsDark.gray6,
      muted: ScaleColorsDark.gray7,
      subtle: ScaleColorsDark.gray0.withOpacity(0.1),
    );
  }

  /// The variant of [Border] that is appropriate for a high-contrast light
  /// theme.
  factory Border.lightHighContrast() {
    return const Border(
      dflt: ScaleColorsHighContrastLight.gray8,
      muted: ScaleColorsHighContrastLight.gray4,
      subtle: Color.fromRGBO(1, 4, 9, 0.8),
    );
  }

  /// The variant of [Border] that is appropriate for a high-contrast dark
  /// theme.
  factory Border.darkHighContrast() {
    return const Border(
      dflt: ScaleColorsHighContrastDark.gray5,
      muted: ScaleColorsHighContrastDark.gray5,
      subtle: ScaleColorsHighContrastDark.gray5,
    );
  }

  /// The variant of [Border] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Border.lightColorblind() {
    return const Border(
      dflt: ScaleColorsColorblindLight.gray2,
      muted: Color(0xffd8dee4),
      subtle: Color.fromRGBO(27, 31, 36, 0.15),
    );
  }

  /// The variant of [Border] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Border.darkColorblind() {
    return const Border(
      dflt: ScaleColorsColorblindDark.gray6,
      muted: ScaleColorsColorblindDark.gray7,
      subtle: Color.fromRGBO(240, 246, 252, 0.1),
    );
  }

  /// The variant of [Border] that is appropriate for a light tritanopia
  /// theme.
  factory Border.lightTritanopia() {
    return const Border(
      dflt: ScaleColorsTritanopiaLight.gray2,
      muted: Color(0xffd8dee4),
      subtle: Color.fromRGBO(27, 31, 36, 0.15),
    );
  }

  /// The variant of [Border] that is appropriate for a dark tritanopia
  /// theme.
  factory Border.darkTritanopia() {
    return const Border(
      dflt: ScaleColorsTritanopiaDark.gray6,
      muted: ScaleColorsTritanopiaDark.gray7,
      subtle: Color.fromRGBO(240, 246, 252, 0.1),
    );
  }

  /// The variant of [Border] that is appropriate for a dimmed dark theme.
  factory Border.dimmed() {
    return const Border(
      dflt: ScaleColorsDimmed.gray6,
      muted: ScaleColorsDark.gray7,
      subtle: Color.fromRGBO(205, 217, 229, 0.1),
    );
  }

  /// Use to create bounds around content, for example elements inside a card.
  ///
  /// Default borders are critical to understanding a page layout.
  final Color dflt;

  /// Use for dividers to emphasize the separation between items, columns or
  /// sections.
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('dflt', dflt));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template neutral}
/// Colors used to highlight content without any added meaning.
///
/// Use [Neutral.light] for colors appropriate for a light theme, and
/// the [Neutral.dark] constructor for colors appropriate for a dark theme.
/// {@endtemplate}
class Neutral with Diagnosticable {
  /// {@macro neutral}
  const Neutral({
    required this.emphasisPlus,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Neutral].
  factory Neutral.light() {
    return Neutral(
      emphasisPlus: ScaleColorsLight.gray9,
      emphasis: ScaleColorsLight.gray5,
      muted: ScaleColorsLight.gray3.withOpacity(0.2),
      subtle: ScaleColorsLight.gray1.withOpacity(0.5),
    );
  }

  /// The dark variant of [Neutral].
  factory Neutral.dark() {
    return Neutral(
      emphasisPlus: ScaleColorsDark.gray4,
      emphasis: ScaleColorsDark.gray4,
      muted: ScaleColorsDark.gray4.withOpacity(0.4),
      subtle: ScaleColorsDark.gray4.withOpacity(0.1),
    );
  }

  /// The variant of [Neutral] that is appropriate for a high-contrast light
  /// theme.
  factory Neutral.lightHighContrast() {
    return const Neutral(
      emphasisPlus: ScaleColorsHighContrastLight.gray9,
      emphasis: ScaleColorsHighContrastLight.gray5,
      muted: Color.fromRGBO(172, 182, 192, 0.2),
      subtle: ScaleColorsHighContrastLight.gray1,
    );
  }

  /// The variant of [Neutral] that is appropriate for a high-contrast dark
  /// theme.
  factory Neutral.darkHighContrast() {
    return const Neutral(
      emphasisPlus: ScaleColorsHighContrastDark.white,
      emphasis: ScaleColorsHighContrastDark.gray4,
      muted: Color.fromRGBO(158, 167, 179, 0.4),
      subtle: Color.fromRGBO(158, 167, 179, 0.1),
    );
  }

  /// The variant of [Neutral] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Neutral.lightColorblind() {
    return const Neutral(
      emphasisPlus: ScaleColorsColorblindLight.gray9,
      emphasis: ScaleColorsColorblindLight.gray5,
      muted: Color.fromRGBO(175, 184, 193, 0.2),
      subtle: Color.fromRGBO(234, 238, 242, 0.5),
    );
  }

  /// The variant of [Neutral] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Neutral.darkColorblind() {
    return const Neutral(
      emphasisPlus: ScaleColorsColorblindDark.gray4,
      emphasis: ScaleColorsColorblindDark.gray4,
      muted: Color.fromRGBO(110, 118, 129, 0.4),
      subtle: Color.fromRGBO(110, 118, 129, 0.1),
    );
  }

  /// The variant of [Neutral] that is appropriate for a light tritanopia
  /// theme.
  factory Neutral.lightTritanopia() {
    return const Neutral(
      emphasisPlus: ScaleColorsTritanopiaLight.gray9,
      emphasis: ScaleColorsTritanopiaLight.gray5,
      muted: Color.fromRGBO(175, 184, 193, 0.2),
      subtle: Color.fromRGBO(234, 238, 242, 0.5),
    );
  }

  /// The variant of [Neutral] that is appropriate for a dark tritanopia
  /// theme.
  factory Neutral.darkTritanopia() {
    return const Neutral(
      emphasisPlus: ScaleColorsTritanopiaDark.gray4,
      emphasis: ScaleColorsTritanopiaDark.gray4,
      muted: Color.fromRGBO(110, 118, 129, 0.4),
      subtle: Color.fromRGBO(110, 118, 129, 0.1),
    );
  }

  /// The variant of [Neutral] that is appropriate for a dimmed dark theme.
  factory Neutral.dimmed() {
    return const Neutral(
      emphasisPlus: ScaleColorsDimmed.gray4,
      emphasis: ScaleColorsDark.gray4,
      muted: Color.fromRGBO(99, 110, 123, 0.4),
      subtle: Color.fromRGBO(99, 110, 123, 0.1),
    );
  }

  final Color emphasisPlus;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('emphasisPlus', emphasisPlus));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template accent}
/// Colors for drawing attention to interactive elements, like links or buttons.
///
/// Use the default constructor for colors appropriate for light themes,
/// and [Accent.dark] for colors appropriate for dark themes.
/// {@endtemplate}
class Accent with Diagnosticable {
  /// {@macro accent}
  const Accent({
    this.foreground = ScaleColorsLight.blue5,
    this.emphasis = ScaleColorsLight.blue5,
    this.muted = ScaleColorsLight.blue3,
    this.subtle = ScaleColorsLight.blue0,
  });

  /// The dark variant of [Accent].
  factory Accent.dark() {
    return Accent(
      foreground: ScaleColorsDark.blue3,
      emphasis: ScaleColorsDark.blue5,
      muted: ScaleColorsDark.blue4.withOpacity(0.4),
      subtle: ScaleColorsDark.blue4.withOpacity(0.15),
    );
  }

  /// The variant of [Accent] that is appropriate for a high-contrast light
  /// theme.
  factory Accent.lightHighContrast() {
    return const Accent(
      foreground: ScaleColorsHighContrastLight.blue5,
      emphasis: ScaleColorsHighContrastLight.blue5,
      muted: ScaleColorsHighContrastLight.blue3,
      subtle: ScaleColorsHighContrastLight.blue0,
    );
  }

  /// The variant of [Accent] that is appropriate for a high-contrast dark
  /// theme.
  factory Accent.darkHighContrast() {
    return const Accent(
      foreground: ScaleColorsHighContrastDark.blue3,
      emphasis: ScaleColorsHighContrastDark.blue4,
      muted: ScaleColorsHighContrastDark.blue4,
      subtle: Color.fromRGBO(64, 158, 255, 0.15),
    );
  }

  /// The variant of [Accent] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Accent.lightColorblind() {
    return const Accent(
      foreground: ScaleColorsColorblindLight.blue5,
      emphasis: ScaleColorsColorblindLight.blue5,
      muted: Color.fromRGBO(84, 174, 255, 0.4),
      subtle: ScaleColorsColorblindLight.blue0,
    );
  }

  /// The variant of [Accent] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Accent.darkColorblind() {
    return const Accent(
      foreground: ScaleColorsColorblindDark.blue3,
      emphasis: ScaleColorsColorblindDark.blue5,
      muted: Color.fromRGBO(56, 139, 253, 0.4),
      subtle: Color.fromRGBO(56, 139, 253, 0.15),
    );
  }

  /// The variant of [Accent] that is appropriate for a light tritanopia
  /// theme.
  factory Accent.lightTritanopia() {
    return const Accent(
      foreground: ScaleColorsTritanopiaLight.blue5,
      emphasis: ScaleColorsTritanopiaLight.blue5,
      muted: Color.fromRGBO(84, 174, 255, 0.4),
      subtle: ScaleColorsTritanopiaLight.blue0,
    );
  }

  /// The variant of [Accent] that is appropriate for a dark tritanopia
  /// theme.
  factory Accent.darkTritanopia() {
    return const Accent(
      foreground: ScaleColorsTritanopiaDark.blue3,
      emphasis: ScaleColorsTritanopiaDark.blue5,
      muted: Color.fromRGBO(56, 139, 253, 0.4),
      subtle: Color.fromRGBO(56, 139, 253, 0.15),
    );
  }

  /// The variant of [Accent] that is appropriate for a dimmed dark theme.
  factory Accent.dimmed() {
    return const Accent(
      foreground: ScaleColorsDimmed.blue3,
      emphasis: ScaleColorsDark.blue5,
      muted: Color.fromRGBO(65, 132, 228, 0.4),
      subtle: Color.fromRGBO(65, 132, 228, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template success}
/// Colors for emphasizing a positive message.
///
/// Commonly used to expresses the completion or positive outcome of a task.
///
/// Use [Success.light] for colors appropriate for light themes,
/// and [Success.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Success with Diagnosticable {
  /// {@macro success}
  const Success({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Success].
  factory Success.light() {
    return Success(
      foreground: ScaleColorsLight.green5,
      emphasis: ScaleColorsLight.green4,
      muted: ScaleColorsLight.green3.withOpacity(0.4),
      subtle: ScaleColorsLight.green0,
    );
  }

  /// The dark variant of [Success].
  factory Success.dark() {
    return Success(
      foreground: ScaleColorsDark.green3,
      emphasis: ScaleColorsDark.green5,
      muted: ScaleColorsDark.green4.withOpacity(0.4),
      subtle: ScaleColorsDark.green4.withOpacity(0.15),
    );
  }

  /// The variant of [Success] that is appropriate for a high-contrast light
  /// theme.
  factory Success.lightHighContrast() {
    return const Success(
      foreground: ScaleColorsHighContrastLight.green5,
      emphasis: ScaleColorsHighContrastLight.green5,
      muted: ScaleColorsHighContrastLight.green3,
      subtle: ScaleColorsHighContrastLight.green0,
    );
  }

  /// The variant of [Success] that is appropriate for a high-contrast dark
  /// theme.
  factory Success.darkHighContrast() {
    return const Success(
      foreground: ScaleColorsHighContrastDark.green3,
      emphasis: ScaleColorsHighContrastDark.green4,
      muted: ScaleColorsHighContrastDark.green4,
      subtle: Color.fromRGBO(9, 180, 58, 0.15),
    );
  }

  /// The variant of [Success] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Success.lightColorblind() {
    return const Success(
      foreground: ScaleColorsColorblindLight.green5,
      emphasis: ScaleColorsColorblindLight.green4,
      muted: Color.fromRGBO(84, 174, 255, 0.4),
      subtle: ScaleColorsColorblindLight.green0,
    );
  }

  /// The variant of [Success] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Success.darkColorblind() {
    return const Success(
      foreground: ScaleColorsColorblindDark.green3,
      emphasis: ScaleColorsColorblindDark.green5,
      muted: Color.fromRGBO(56, 139, 253, 0.4),
      subtle: Color.fromRGBO(56, 139, 253, 0.15),
    );
  }

  /// The variant of [Success] that is appropriate for a light tritanopia
  /// theme.
  factory Success.lightTritanopia() {
    return const Success(
      foreground: ScaleColorsTritanopiaLight.green5,
      emphasis: ScaleColorsTritanopiaLight.green4,
      muted: Color.fromRGBO(84, 174, 255, 0.4),
      subtle: ScaleColorsTritanopiaLight.green0,
    );
  }

  /// The variant of [Success] that is appropriate for a dark tritanopia
  /// theme.
  factory Success.darkTritanopia() {
    return const Success(
      foreground: ScaleColorsTritanopiaDark.green3,
      emphasis: ScaleColorsTritanopiaDark.green5,
      muted: Color.fromRGBO(56, 139, 253, 0.4),
      subtle: Color.fromRGBO(56, 139, 253, 0.15),
    );
  }

  /// The variant of [Success] that is appropriate for a dimmed dark theme.
  factory Success.dimmed() {
    return const Success(
      foreground: ScaleColorsDimmed.green3,
      emphasis: ScaleColorsDark.green5,
      muted: Color.fromRGBO(70, 149, 74, 0.4),
      subtle: Color.fromRGBO(70, 149, 74, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template attention}
/// Colors for highlighting text or icons that require the user's attention.
///
/// Commonly used to warn of pending tasks or to highlight active content.
///
/// Use [Attention.light] for colors appropriate for light themes,
/// and [Attention.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Attention with Diagnosticable {
  /// {@macro attention}
  const Attention({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Attention].
  factory Attention.light() {
    return Attention(
      foreground: ScaleColorsLight.yellow5,
      emphasis: ScaleColorsLight.yellow4,
      muted: ScaleColorsLight.yellow3.withOpacity(0.4),
      subtle: ScaleColorsLight.yellow0,
    );
  }

  /// The dark variant of [Attention].
  factory Attention.dark() {
    return Attention(
      foreground: ScaleColorsDark.yellow3,
      emphasis: ScaleColorsDark.yellow5,
      muted: ScaleColorsDark.yellow4.withOpacity(0.4),
      subtle: ScaleColorsDark.yellow3.withOpacity(0.15),
    );
  }

  /// The variant of [Attention] that is appropriate for a high-contrast light
  /// theme.
  factory Attention.lightHighContrast() {
    return const Attention(
      foreground: ScaleColorsHighContrastLight.yellow5,
      emphasis: ScaleColorsHighContrastLight.yellow5,
      muted: ScaleColorsHighContrastLight.yellow3,
      subtle: ScaleColorsHighContrastLight.yellow0,
    );
  }

  /// The variant of [Attention] that is appropriate for a high-contrast dark
  /// theme.
  factory Attention.darkHighContrast() {
    return const Attention(
      foreground: ScaleColorsHighContrastDark.yellow3,
      emphasis: ScaleColorsHighContrastDark.yellow4,
      muted: ScaleColorsHighContrastDark.yellow4,
      subtle: Color.fromRGBO(224, 155, 19, 0.15),
    );
  }

  /// The variant of [Attention] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Attention.lightColorblind() {
    return const Attention(
      foreground: ScaleColorsColorblindLight.yellow5,
      emphasis: ScaleColorsColorblindLight.yellow4,
      muted: Color.fromRGBO(212, 167, 44, 0.4),
      subtle: ScaleColorsColorblindLight.yellow0,
    );
  }

  /// The variant of [Attention] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Attention.darkColorblind() {
    return const Attention(
      foreground: ScaleColorsColorblindDark.yellow3,
      emphasis: ScaleColorsColorblindDark.yellow5,
      muted: Color.fromRGBO(187, 128, 9, 0.4),
      subtle: Color.fromRGBO(187, 128, 9, 0.15),
    );
  }

  /// The variant of [Attention] that is appropriate for a light tritanopia
  /// theme.
  factory Attention.lightTritanopia() {
    return const Attention(
      foreground: ScaleColorsTritanopiaLight.yellow5,
      emphasis: ScaleColorsTritanopiaLight.yellow4,
      muted: Color.fromRGBO(212, 167, 44, 0.4),
      subtle: ScaleColorsTritanopiaLight.yellow0,
    );
  }

  /// The variant of [Attention] that is appropriate for a dark tritanopia
  /// theme.
  factory Attention.darkTritanopia() {
    return const Attention(
      foreground: ScaleColorsTritanopiaDark.yellow3,
      emphasis: ScaleColorsTritanopiaDark.yellow5,
      muted: Color.fromRGBO(187, 128, 9, 0.4),
      subtle: Color.fromRGBO(187, 128, 9, 0.15),
    );
  }

  /// The variant of [Attention] that is appropriate for a dimmed dark theme.
  factory Attention.dimmed() {
    return const Attention(
      foreground: ScaleColorsDimmed.yellow3,
      emphasis: ScaleColorsDark.yellow5,
      muted: Color.fromRGBO(174, 124, 20, 0.4),
      subtle: Color.fromRGBO(174, 124, 20, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template severe}
/// Colors for emphasizing a level of severity between [Attention] and [Danger].
///
/// Commonly used when there are more than 3 levels of states, for example in
/// heatmaps.
///
/// Use [Severe.light] for colors appropriate for light themes,
/// and [Severe.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Severe with Diagnosticable {
  /// {@macro severe}
  const Severe({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Severe].
  factory Severe.light() {
    return Severe(
      foreground: ScaleColorsLight.orange5,
      emphasis: ScaleColorsLight.orange4,
      muted: ScaleColorsLight.orange3.withOpacity(0.4),
      subtle: ScaleColorsLight.orange0,
    );
  }

  /// The dark variant of [Severe].
  factory Severe.dark() {
    return Severe(
      foreground: ScaleColorsDark.orange4,
      emphasis: ScaleColorsDark.orange5,
      muted: ScaleColorsDark.orange4.withOpacity(0.4),
      subtle: ScaleColorsDark.orange4.withOpacity(0.15),
    );
  }

  /// The variant of [Severe] that is appropriate for a high-contrast light
  /// theme.
  factory Severe.lightHighContrast() {
    return const Severe(
      foreground: ScaleColorsHighContrastLight.orange5,
      emphasis: ScaleColorsHighContrastLight.orange5,
      muted: ScaleColorsHighContrastLight.orange3,
      subtle: ScaleColorsHighContrastLight.orange0,
    );
  }

  /// The variant of [Severe] that is appropriate for a high-contrast dark
  /// theme.
  factory Severe.darkHighContrast() {
    return const Severe(
      foreground: ScaleColorsHighContrastDark.orange4,
      emphasis: ScaleColorsHighContrastDark.orange4,
      muted: ScaleColorsHighContrastDark.orange4,
      subtle: Color.fromRGBO(231, 129, 29, 0.15),
    );
  }

  /// The variant of [Severe] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Severe.lightColorblind() {
    return const Severe(
      foreground: ScaleColorsColorblindLight.orange5,
      emphasis: ScaleColorsColorblindLight.orange5,
      muted: Color.fromRGBO(247, 153, 57, 0.4),
      subtle: ScaleColorsColorblindLight.orange0,
    );
  }

  /// The variant of [Severe] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Severe.darkColorblind() {
    return const Severe(
      foreground: ScaleColorsColorblindDark.orange4,
      emphasis: ScaleColorsColorblindDark.orange5,
      muted: Color.fromRGBO(212, 118, 22, 0.4),
      subtle: Color.fromRGBO(212, 118, 22, 0.15),
    );
  }

  /// The variant of [Severe] that is appropriate for a light tritanopia
  /// theme.
  factory Severe.lightTritanopia() {
    return const Severe(
      foreground: ScaleColorsTritanopiaLight.red5,
      emphasis: ScaleColorsTritanopiaLight.red5,
      muted: Color.fromRGBO(255, 129, 130, 0.4),
      subtle: ScaleColorsTritanopiaLight.red0,
    );
  }

  /// The variant of [Severe] that is appropriate for a dark tritanopia
  /// theme.
  factory Severe.darkTritanopia() {
    return const Severe(
      foreground: ScaleColorsTritanopiaDark.red4,
      emphasis: ScaleColorsTritanopiaDark.red5,
      muted: Color.fromRGBO(248, 81, 73, 0.4),
      subtle: Color.fromRGBO(248, 81, 73, 0.15),
    );
  }

  /// The variant of [Severe] that is appropriate for a dimmed dark theme.
  factory Severe.dimmed() {
    return const Severe(
      foreground: ScaleColorsDimmed.orange4,
      emphasis: ScaleColorsDark.orange5,
      muted: Color.fromRGBO(204, 107, 44, 0.4),
      subtle: Color.fromRGBO(204, 107, 44, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template danger}
/// Colors for emphasizing an error or a blocking status. Action is required.
///
/// Commonly used to inform of errors or other negative messages.
///
/// Use [Danger.light] for colors appropriate for light themes,
/// and [Danger.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Danger with Diagnosticable {
  /// {@macro danger}
  const Danger({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Danger].
  factory Danger.light() {
    return Danger(
      foreground: ScaleColorsLight.red5,
      emphasis: ScaleColorsLight.red5,
      muted: ScaleColorsLight.red3.withOpacity(0.4),
      subtle: ScaleColorsLight.red0,
    );
  }

  /// The dark variant of [Danger].
  factory Danger.dark() {
    return Danger(
      foreground: ScaleColorsDark.red4,
      emphasis: ScaleColorsDark.red5,
      muted: ScaleColorsDark.red4.withOpacity(0.4),
      subtle: ScaleColorsDark.red4.withOpacity(0.15),
    );
  }

  /// The variant of [Danger] that is appropriate for a high-contrast light
  /// theme.
  factory Danger.lightHighContrast() {
    return const Danger(
      foreground: ScaleColorsHighContrastLight.red5,
      emphasis: ScaleColorsHighContrastLight.red5,
      muted: ScaleColorsHighContrastLight.red3,
      subtle: ScaleColorsHighContrastLight.red0,
    );
  }

  /// The variant of [Danger] that is appropriate for a high-contrast dark
  /// theme.
  factory Danger.darkHighContrast() {
    return const Danger(
      foreground: ScaleColorsHighContrastDark.red4,
      emphasis: ScaleColorsHighContrastDark.red4,
      muted: ScaleColorsHighContrastDark.red4,
      subtle: Color.fromRGBO(255, 106, 105, 0.15),
    );
  }

  /// The variant of [Danger] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Danger.lightColorblind() {
    return const Danger(
      foreground: ScaleColorsColorblindLight.red5,
      emphasis: ScaleColorsColorblindLight.red5,
      muted: Color.fromRGBO(247, 153, 57, 0.4),
      subtle: ScaleColorsColorblindLight.red0,
    );
  }

  /// The variant of [Danger] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Danger.darkColorblind() {
    return const Danger(
      foreground: ScaleColorsColorblindDark.red4,
      emphasis: ScaleColorsColorblindDark.red5,
      muted: Color.fromRGBO(212, 118, 22, 0.4),
      subtle: Color.fromRGBO(212, 118, 22, 0.15),
    );
  }

  /// The variant of [Danger] that is appropriate for a light tritanopia
  /// theme.
  factory Danger.lightTritanopia() {
    return const Danger(
      foreground: ScaleColorsTritanopiaLight.red5,
      emphasis: ScaleColorsTritanopiaLight.red5,
      muted: Color.fromRGBO(255, 129, 130, 0.4),
      subtle: ScaleColorsTritanopiaLight.red0,
    );
  }

  /// The variant of [Danger] that is appropriate for a dark tritanopia
  /// theme.
  factory Danger.darkTritanopia() {
    return const Danger(
      foreground: ScaleColorsTritanopiaDark.red4,
      emphasis: ScaleColorsTritanopiaDark.red5,
      muted: Color.fromRGBO(248, 81, 73, 0.4),
      subtle: Color.fromRGBO(248, 81, 73, 0.15),
    );
  }

  /// The variant of [Danger] that is appropriate for a dimmed dark theme.
  factory Danger.dimmed() {
    return const Danger(
      foreground: ScaleColorsDimmed.red4,
      emphasis: ScaleColorsDark.red5,
      muted: Color.fromRGBO(229, 83, 75, 0.4),
      subtle: Color.fromRGBO(229, 83, 75, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template open}
/// Colors for styling UI elements that refer to open tasks or workflows.
///
/// Use [Open.light] for colors appropriate for light themes,
/// and [Open.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Open with Diagnosticable {
  /// {@macro open}
  const Open({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Open].
  factory Open.light() {
    return Open(
      foreground: ScaleColorsLight.green5,
      emphasis: ScaleColorsLight.green4,
      muted: ScaleColorsLight.green3.withOpacity(0.4),
      subtle: ScaleColorsLight.green0,
    );
  }

  /// The dark variant of [Open].
  factory Open.dark() {
    return Open(
      foreground: ScaleColorsDark.green3,
      emphasis: ScaleColorsDark.green5,
      muted: ScaleColorsDark.green4.withOpacity(0.4),
      subtle: ScaleColorsDark.green4.withOpacity(0.15),
    );
  }

  /// The variant of [Open] that is appropriate for a high-contrast light
  /// theme.
  factory Open.lightHighContrast() {
    return const Open(
      foreground: ScaleColorsHighContrastLight.green5,
      emphasis: ScaleColorsHighContrastLight.green4,
      muted: Color.fromRGBO(38, 161, 72, 0.4),
      subtle: ScaleColorsHighContrastLight.green0,
    );
  }

  /// The variant of [Open] that is appropriate for a high-contrast dark
  /// theme.
  factory Open.darkHighContrast() {
    return const Open(
      foreground: ScaleColorsHighContrastDark.green3,
      emphasis: ScaleColorsHighContrastDark.green4,
      muted: Color.fromRGBO(9, 180, 54, 0.4),
      subtle: Color.fromRGBO(9, 180, 54, 0.15),
    );
  }

  /// The variant of [Open] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Open.lightColorblind() {
    return const Open(
      foreground: ScaleColorsColorblindLight.orange5,
      emphasis: ScaleColorsColorblindLight.orange4,
      muted: Color.fromRGBO(247, 153, 57, 0.4),
      subtle: ScaleColorsColorblindLight.orange0,
    );
  }

  /// The variant of [Open] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Open.darkColorblind() {
    return const Open(
      foreground: ScaleColorsColorblindDark.orange3,
      emphasis: ScaleColorsColorblindDark.orange5,
      muted: Color.fromRGBO(212, 118, 22, 0.4),
      subtle: Color.fromRGBO(212, 118, 22, 0.15),
    );
  }

  /// The variant of [Open] that is appropriate for a light tritanopia
  /// theme.
  factory Open.lightTritanopia() {
    return const Open(
      foreground: ScaleColorsTritanopiaLight.orange5,
      emphasis: ScaleColorsTritanopiaLight.orange4,
      muted: Color.fromRGBO(255, 129, 130, 0.4),
      subtle: ScaleColorsTritanopiaLight.orange0,
    );
  }

  /// The variant of [Open] that is appropriate for a dark tritanopia
  /// theme.
  factory Open.darkTritanopia() {
    return const Open(
      foreground: ScaleColorsTritanopiaDark.red3,
      emphasis: ScaleColorsTritanopiaDark.red5,
      muted: Color.fromRGBO(248, 81, 73, 0.4),
      subtle: Color.fromRGBO(248, 81, 73, 0.15),
    );
  }

  /// The variant of [Open] that is appropriate for a dimmed dark theme.
  factory Open.dimmed() {
    return const Open(
      foreground: ScaleColorsDimmed.green3,
      emphasis: ScaleColorsDark.green5,
      muted: Color.fromRGBO(70, 149, 74, 0.4),
      subtle: Color.fromRGBO(70, 149, 74, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template closed}
/// Colors for styling UI elements that refer to closed tasks or workflows.
///
/// Use [Closed.light] for colors appropriate for light themes,
/// and [Closed.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Closed with Diagnosticable {
  /// {@macro closed}
  const Closed({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Closed].
  factory Closed.light() {
    return Closed(
      foreground: ScaleColorsLight.red5,
      emphasis: ScaleColorsLight.red5,
      muted: ScaleColorsLight.red3.withOpacity(0.4),
      subtle: ScaleColorsLight.red0,
    );
  }

  /// The dark variant of [Closed].
  factory Closed.dark() {
    return Closed(
      foreground: ScaleColorsDark.red4,
      emphasis: ScaleColorsDark.red5,
      muted: ScaleColorsDark.red4.withOpacity(0.4),
      subtle: ScaleColorsDark.red4.withOpacity(0.15),
    );
  }

  /// The variant of [Closed] that is appropriate for a high-contrast light
  /// theme.
  factory Closed.lightHighContrast() {
    return const Closed(
      foreground: ScaleColorsHighContrastLight.red5,
      emphasis: ScaleColorsHighContrastLight.red5,
      muted: Color.fromRGBO(238, 90, 93, 0.4),
      subtle: ScaleColorsHighContrastLight.red0,
    );
  }

  /// The variant of [Closed] that is appropriate for a high-contrast dark
  /// theme.
  factory Closed.darkHighContrast() {
    return const Closed(
      foreground: ScaleColorsHighContrastDark.red4,
      emphasis: ScaleColorsHighContrastDark.red4,
      muted: Color.fromRGBO(255, 106, 105, 0.4),
      subtle: Color.fromRGBO(255, 106, 105, 0.15),
    );
  }

  /// The variant of [Closed] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Closed.lightColorblind() {
    return const Closed(
      foreground: ScaleColorsColorblindLight.gray5,
      emphasis: ScaleColorsColorblindLight.gray5,
      muted: Color.fromRGBO(175, 184, 193, 0.4),
      subtle: ScaleColorsColorblindLight.gray0,
    );
  }

  /// The variant of [Closed] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Closed.darkColorblind() {
    return const Closed(
      foreground: ScaleColorsColorblindDark.gray3,
      emphasis: ScaleColorsColorblindDark.gray4,
      muted: Color.fromRGBO(110, 118, 129, 0.4),
      subtle: Color.fromRGBO(110, 118, 129, 0.15),
    );
  }

  /// The variant of [Closed] that is appropriate for a light tritanopia
  /// theme.
  factory Closed.lightTritanopia() {
    return const Closed(
      foreground: ScaleColorsTritanopiaLight.gray5,
      emphasis: ScaleColorsTritanopiaLight.gray5,
      muted: Color.fromRGBO(175, 184, 193, 0.4),
      subtle: ScaleColorsTritanopiaLight.gray0,
    );
  }

  /// The variant of [Closed] that is appropriate for a dark tritanopia
  /// theme.
  factory Closed.darkTritanopia() {
    return const Closed(
      foreground: ScaleColorsTritanopiaDark.gray3,
      emphasis: ScaleColorsTritanopiaDark.gray4,
      muted: Color.fromRGBO(110, 118, 129, 0.4),
      subtle: Color.fromRGBO(110, 118, 129, 0.15),
    );
  }

  /// The variant of [Closed] that is appropriate for a dimmed dark theme.
  factory Closed.dimmed() {
    return const Closed(
      foreground: ScaleColorsDimmed.red4,
      emphasis: ScaleColorsDark.red5,
      muted: Color.fromRGBO(229, 83, 75, 0.4),
      subtle: Color.fromRGBO(229, 83, 75, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template done}
/// Completion colors for productivity and code review workflows.
///
/// Use [Done.light] for colors appropriate for light themes,
/// and [Done.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Done with Diagnosticable {
  /// {@macro done}
  const Done({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Done].
  factory Done.light() {
    return Done(
      foreground: ScaleColorsLight.purple5,
      emphasis: ScaleColorsLight.purple5,
      muted: ScaleColorsLight.purple3.withOpacity(0.4),
      subtle: ScaleColorsLight.purple0,
    );
  }

  /// The dark variant of [Done].
  factory Done.dark() {
    return Done(
      foreground: ScaleColorsDark.purple4,
      emphasis: ScaleColorsDark.purple5,
      muted: ScaleColorsDark.purple4.withOpacity(0.4),
      subtle: ScaleColorsDark.purple4.withOpacity(0.15),
    );
  }

  /// The variant of [Done] that is appropriate for a high-contrast light
  /// theme.
  factory Done.lightHighContrast() {
    return const Done(
      foreground: ScaleColorsHighContrastLight.purple5,
      emphasis: ScaleColorsHighContrastLight.purple5,
      muted: ScaleColorsHighContrastLight.purple3,
      subtle: ScaleColorsHighContrastLight.purple0,
    );
  }

  /// The variant of [Done] that is appropriate for a high-contrast dark
  /// theme.
  factory Done.darkHighContrast() {
    return const Done(
      foreground: ScaleColorsHighContrastDark.purple4,
      emphasis: ScaleColorsHighContrastDark.purple4,
      muted: ScaleColorsHighContrastDark.purple4,
      subtle: Color.fromRGBO(183, 128, 255, 0.15),
    );
  }

  /// The variant of [Done] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Done.lightColorblind() {
    return const Done(
      foreground: ScaleColorsColorblindLight.purple5,
      emphasis: ScaleColorsColorblindLight.purple5,
      muted: Color.fromRGBO(194, 151, 255, 0.4),
      subtle: ScaleColorsColorblindLight.purple0,
    );
  }

  /// The variant of [Done] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Done.darkColorblind() {
    return const Done(
      foreground: ScaleColorsColorblindDark.purple4,
      emphasis: ScaleColorsColorblindDark.purple5,
      muted: Color.fromRGBO(163, 113, 247, 0.4),
      subtle: Color.fromRGBO(163, 113, 247, 0.15),
    );
  }

  /// The variant of [Done] that is appropriate for a light tritanopia
  /// theme.
  factory Done.lightTritanopia() {
    return const Done(
      foreground: ScaleColorsTritanopiaLight.purple5,
      emphasis: ScaleColorsTritanopiaLight.purple5,
      muted: Color.fromRGBO(194, 151, 255, 0.4),
      subtle: ScaleColorsTritanopiaLight.purple0,
    );
  }

  /// The variant of [Done] that is appropriate for a dark tritanopia
  /// theme.
  factory Done.darkTritanopia() {
    return const Done(
      foreground: ScaleColorsTritanopiaDark.purple4,
      emphasis: ScaleColorsTritanopiaDark.purple5,
      muted: Color.fromRGBO(163, 113, 247, 0.4),
      subtle: Color.fromRGBO(163, 113, 247, 0.15),
    );
  }

  /// The variant of [Done] that is appropriate for a dimmed dark theme.
  factory Done.dimmed() {
    return const Done(
      foreground: ScaleColorsDimmed.purple4,
      emphasis: ScaleColorsDark.purple5,
      muted: Color.fromRGBO(152, 110, 226, 0.4),
      subtle: Color.fromRGBO(152, 110, 226, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

/// {@template sponsors}
/// Colors for styling Sponsors-related UI.
///
/// Use [Sponsors.light] for colors appropriate for light themes,
/// and [Sponsors.dark] for colors appropriate for dark themes.
///
/// It is not recommended to use the default constructor.
/// {@endtemplate}
class Sponsors with Diagnosticable {
  /// {@macro sponsors}
  const Sponsors({
    required this.foreground,
    required this.emphasis,
    required this.muted,
    required this.subtle,
  });

  /// The light variant of [Sponsors].
  factory Sponsors.light() {
    return Sponsors(
      foreground: ScaleColorsLight.pink5,
      emphasis: ScaleColorsLight.pink5,
      muted: ScaleColorsLight.pink3.withOpacity(0.4),
      subtle: ScaleColorsLight.pink0,
    );
  }

  /// The dark variant of [Sponsors].
  factory Sponsors.dark() {
    return Sponsors(
      foreground: ScaleColorsDark.pink4,
      emphasis: ScaleColorsDark.pink5,
      muted: ScaleColorsDark.pink4.withOpacity(0.4),
      subtle: ScaleColorsDark.pink4.withOpacity(0.15),
    );
  }

  /// The variant of [Sponsors] that is appropriate for a high-contrast light
  /// theme.
  factory Sponsors.lightHighContrast() {
    return const Sponsors(
      foreground: ScaleColorsHighContrastLight.pink5,
      emphasis: ScaleColorsHighContrastLight.pink5,
      muted: ScaleColorsHighContrastLight.pink3,
      subtle: ScaleColorsHighContrastLight.pink0,
    );
  }

  /// The variant of [Sponsors] that is appropriate for a high-contrast dark
  /// theme.
  factory Sponsors.darkHighContrast() {
    return const Sponsors(
      foreground: ScaleColorsHighContrastDark.pink4,
      emphasis: ScaleColorsHighContrastDark.pink4,
      muted: ScaleColorsHighContrastDark.pink4,
      subtle: Color.fromRGBO(239, 110, 177, 0.15),
    );
  }

  /// The variant of [Sponsors] that is appropriate for a colorblind-friendly
  /// light theme.
  factory Sponsors.lightColorblind() {
    return const Sponsors(
      foreground: ScaleColorsColorblindLight.pink5,
      emphasis: ScaleColorsColorblindLight.pink5,
      muted: Color.fromRGBO(255, 128, 200, 0.4),
      subtle: ScaleColorsColorblindLight.pink0,
    );
  }

  /// The variant of [Sponsors] that is appropriate for a colorblind-friendly
  /// dark theme.
  factory Sponsors.darkColorblind() {
    return const Sponsors(
      foreground: ScaleColorsColorblindDark.pink4,
      emphasis: ScaleColorsColorblindDark.pink5,
      muted: Color.fromRGBO(219, 97, 162, 0.4),
      subtle: Color.fromRGBO(219, 97, 162, 0.15),
    );
  }

  /// The variant of [Sponsors] that is appropriate for a light tritanopia
  /// theme.
  factory Sponsors.lightTritanopia() {
    return const Sponsors(
      foreground: ScaleColorsTritanopiaLight.pink5,
      emphasis: ScaleColorsTritanopiaLight.pink5,
      muted: Color.fromRGBO(255, 128, 200, 0.4),
      subtle: ScaleColorsTritanopiaLight.pink0,
    );
  }

  /// The variant of [Sponsors] that is appropriate for a dark tritanopia
  /// theme.
  factory Sponsors.darkTritanopia() {
    return const Sponsors(
      foreground: ScaleColorsTritanopiaDark.pink4,
      emphasis: ScaleColorsTritanopiaDark.pink5,
      muted: Color.fromRGBO(219, 97, 162, 0.4),
      subtle: Color.fromRGBO(219, 97, 162, 0.15),
    );
  }

  /// The variant of [Sponsors] that is appropriate for a dimmed dark theme.
  factory Sponsors.dimmed() {
    return const Sponsors(
      foreground: ScaleColorsDimmed.pink4,
      emphasis: ScaleColorsDark.pink5,
      muted: Color.fromRGBO(201, 97, 152, 0.4),
      subtle: Color.fromRGBO(201, 97, 152, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('foreground', foreground));
    properties.add(ColorProperty('emphasis', emphasis));
    properties.add(ColorProperty('muted', muted));
    properties.add(ColorProperty('subtle', subtle));
  }
}

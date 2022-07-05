import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:primer/primer.dart';

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
    this.dflt = ScaleColors.gray9,
    this.muted = ScaleColors.gray6,
    this.subtle = ScaleColors.gray5,
    this.onEmphasis = ScaleColors.white,
  });

  /// The dark variant of [Foreground].
  factory Foreground.dark() {
    return const Foreground(
      dflt: ScaleColors.gray1,
      muted: ScaleColors.gray3,
      subtle: ScaleColors.gray4,
      onEmphasis: ScaleColors.white,
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
    this.dflt = ScaleColors.white,
    this.overlay = ScaleColors.white,
    this.inset = ScaleColors.gray0,
    this.subtle = ScaleColors.gray0,
  });

  /// The dark variant of [Canvas].
  factory Canvas.dark() {
    return const Canvas(
      dflt: ScaleColors.gray9,
      overlay: ScaleColors.gray8,
      inset: ScaleColors.black,
      subtle: ScaleColors.gray8,
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
      dflt: ScaleColors.gray2,
      muted: ScaleColors.lighten(ScaleColors.gray2, 0.03),
      subtle: ScaleColors.black.withOpacity(0.15),
    );
  }

  /// The dark variant for [Border].
  factory Border.dark() {
    return Border(
      dflt: ScaleColors.gray6,
      muted: ScaleColors.gray7,
      subtle: ScaleColors.gray0.withOpacity(0.1),
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
    this.emphasisPlus = ScaleColors.gray9,
    this.emphasis = ScaleColors.gray5,
    this.muted = const Color(0x33afb8c1),
    this.subtle = const Color(0x80eaeef2),
  });

  /// The light variant of [Neutral].
  factory Neutral.light() {
    return Neutral(
      emphasisPlus: ScaleColors.gray9,
      emphasis: ScaleColors.gray5,
      muted: ScaleColors.gray3.withOpacity(0.2),
      subtle: ScaleColors.gray1.withOpacity(0.5),
    );
  }

  /// The dark variant of [Neutral].
  factory Neutral.dark() {
    return Neutral(
      emphasisPlus: ScaleColors.gray4,
      emphasis: ScaleColors.gray4,
      muted: ScaleColors.gray4.withOpacity(0.4),
      subtle: ScaleColors.gray4.withOpacity(0.1),
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
    this.foreground = ScaleColors.blue5,
    this.emphasis = ScaleColors.blue5,
    this.muted = ScaleColors.blue3,
    this.subtle = ScaleColors.blue0,
  });

  /// The dark variant of [Accent].
  factory Accent.dark() {
    return Accent(
      foreground: ScaleColors.blue3,
      emphasis: ScaleColors.blue5,
      muted: ScaleColors.blue4.withOpacity(0.4),
      subtle: ScaleColors.blue4.withOpacity(0.15),
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
      foreground: ScaleColors.green5,
      emphasis: ScaleColors.green4,
      muted: ScaleColors.green3.withOpacity(0.4),
      subtle: ScaleColors.green0,
    );
  }

  /// The dark variant of [Success].
  factory Success.dark() {
    return Success(
      foreground: ScaleColors.green3,
      emphasis: ScaleColors.green5,
      muted: ScaleColors.green4.withOpacity(0.4),
      subtle: ScaleColors.green4.withOpacity(0.15),
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
      foreground: ScaleColors.yellow5,
      emphasis: ScaleColors.yellow4,
      muted: ScaleColors.yellow3.withOpacity(0.4),
      subtle: ScaleColors.yellow0,
    );
  }

  /// The dark variant of [Attention].
  factory Attention.dark() {
    return Attention(
      foreground: ScaleColors.yellow3,
      emphasis: ScaleColors.yellow5,
      muted: ScaleColors.yellow4.withOpacity(0.4),
      subtle: ScaleColors.yellow3.withOpacity(0.15),
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
      foreground: ScaleColors.orange5,
      emphasis: ScaleColors.orange4,
      muted: ScaleColors.orange3.withOpacity(0.4),
      subtle: ScaleColors.orange0,
    );
  }

  /// The dark variant of [Severe].
  factory Severe.dark() {
    return Severe(
      foreground: ScaleColors.orange4,
      emphasis: ScaleColors.orange5,
      muted: ScaleColors.orange4.withOpacity(0.4),
      subtle: ScaleColors.orange4.withOpacity(0.15),
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
      foreground: ScaleColors.red5,
      emphasis: ScaleColors.red5,
      muted: ScaleColors.red3.withOpacity(0.4),
      subtle: ScaleColors.red0,
    );
  }

  /// The dark variant of [Danger].
  factory Danger.dark() {
    return Danger(
      foreground: ScaleColors.red4,
      emphasis: ScaleColors.red5,
      muted: ScaleColors.red4.withOpacity(0.4),
      subtle: ScaleColors.red4.withOpacity(0.15),
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
      foreground: ScaleColors.green5,
      emphasis: ScaleColors.green4,
      muted: ScaleColors.green3.withOpacity(0.4),
      subtle: ScaleColors.green0,
    );
  }

  /// The dark variant of [Open].
  factory Open.dark() {
    return Open(
      foreground: ScaleColors.green3,
      emphasis: ScaleColors.green5,
      muted: ScaleColors.green4.withOpacity(0.4),
      subtle: ScaleColors.green4.withOpacity(0.15),
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
      foreground: ScaleColors.red5,
      emphasis: ScaleColors.red5,
      muted: ScaleColors.red3.withOpacity(0.4),
      subtle: ScaleColors.red0,
    );
  }

  /// The dark variant of [Closed].
  factory Closed.dark() {
    return Closed(
      foreground: ScaleColors.red4,
      emphasis: ScaleColors.red5,
      muted: ScaleColors.red4.withOpacity(0.4),
      subtle: ScaleColors.red4.withOpacity(0.15),
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
      foreground: ScaleColors.purple5,
      emphasis: ScaleColors.purple5,
      muted: ScaleColors.purple3.withOpacity(0.4),
      subtle: ScaleColors.purple0,
    );
  }

  /// The dark variant of [Done].
  factory Done.dark() {
    return Done(
      foreground: ScaleColors.purple4,
      emphasis: ScaleColors.purple5,
      muted: ScaleColors.purple4.withOpacity(0.4),
      subtle: ScaleColors.purple4.withOpacity(0.15),
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
      foreground: ScaleColors.pink5,
      emphasis: ScaleColors.pink5,
      muted: ScaleColors.pink3.withOpacity(0.4),
      subtle: ScaleColors.pink0,
    );
  }

  /// The dark variant of [Sponsors].
  factory Sponsors.dark() {
    return Sponsors(
      foreground: ScaleColors.pink4,
      emphasis: ScaleColors.pink5,
      muted: ScaleColors.pink4.withOpacity(0.4),
      subtle: ScaleColors.pink4.withOpacity(0.15),
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

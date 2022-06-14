import 'dart:ui';

class Foreground {
  const Foreground({
    this.dflt = const Color(0xff24292f),
    this.muted = const Color(0xff57606a),
    this.subtle = const Color(0xff6e7781),
    this.onEmphasis = const Color(0xffffffff),
  });

  factory Foreground.dark() {
    return const Foreground(
      dflt: Color(0xffc9d1d9),
      muted: Color(0xff8b949e),
      subtle: Color(0xff6e7681),
      onEmphasis: Color(0xffffffff),
    );
  }

  final Color dflt;
  final Color muted;
  final Color subtle;
  final Color onEmphasis;
}

class Canvas {
  const Canvas({
    this.dflt = const Color(0xffffffff),
    this.overlay = const Color(0xffffffff),
    this.inset = const Color(0xfff6f8fa),
    this.subtle = const Color(0xfff6f8fa),
  });

  factory Canvas.dark() {
    return const Canvas(
      dflt: Color(0xff0d1117),
      overlay: Color(0xff161b22),
      inset: Color(0xff010409),
      subtle: Color(0xff161b22),
    );
  }

  final Color dflt;
  final Color overlay;
  final Color inset;
  final Color subtle;
}

class Border {
  const Border({
    this.dflt = const Color(0xffd0d7de),
    this.muted = const Color(0xffd8dee4),
    this.subtle = const Color.fromRGBO(27, 31, 36, 0.15),
  });

  factory Border.dark() {
    return const Border(
      dflt: Color(0xff2F363D),
      muted: Color(0xff21262d),
      subtle: Color.fromRGBO(240, 246, 252, 0.1),
    );
  }

  final Color dflt;
  final Color muted;
  final Color subtle;
}

/*class Shadow {
  static const small = Color.fromRGBO(27, 31, 36, 0.04);
  static const medium = Color.fromRGBO(140, 159, 159, 0.15);
  static const large = Color.fromRGBO(140, 159, 159, 0.2);
  static const extraLarge = Color.fromRGBO(140, 159, 159, 0.3);

  static const smallDark = Color(0xff161B22);
}*/

class Neutral {
  const Neutral({
    this.emphasisPlus = const Color(0xff24292f),
    this.emphasis = const Color(0xff6e7781),
    this.muted = const Color(0x33afb8c1),
    this.subtle = const Color(0x80eaeef2),
  });

  factory Neutral.dark() {
    return const Neutral(
      emphasisPlus: Color(0xff6e7681),
      emphasis: Color(0xff6e7681),
      muted: Color(0x666e7681),
      subtle: Color(0x1a6e7681),
    );
  }

  final Color emphasisPlus;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Accent {
  const Accent({
    this.foreground = const Color(0xff0969da),
    this.emphasis = const Color(0xff0969da),
    this.muted = const Color(0xff54aeff),
    this.subtle = const Color(0xffddf4ff),
  });

  factory Accent.dark() {
    return const Accent(
      foreground: Color(0xff58a6ff),
      emphasis: Color(0xff1f6feb),
      muted: Color(0x66388bfd),
      subtle: Color(0x263f8bfd),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Success {
  const Success({
    this.foreground = const Color(0xff1a7f37),
    this.emphasis = const Color(0xff2da44e),
    this.muted = const Color(0x664ac26b),
    this.subtle = const Color(0xffdafbe1),
  });

  factory Success.dark() {
    return const Success(
      foreground: Color(0xff3fb950),
      emphasis: Color(0xff238636),
      muted: Color.fromRGBO(46, 160, 67, 0.4),
      subtle: Color(0x262ea043),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Attention {
  const Attention({
    this.foreground = const Color(0xff9a6700),
    this.emphasis = const Color(0xffbf8700),
    this.muted = const Color.fromRGBO(212, 167, 44, 0.4),
    this.subtle = const Color(0xfffff8c5),
  });

  factory Attention.dark() {
    return const Attention(
      foreground: Color(0xffd29922),
      emphasis: Color(0xff9e6a03),
      muted: Color.fromRGBO(187, 128, 9, 0.4),
      subtle: Color.fromRGBO(187, 128, 9, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Severe {
  const Severe({
    this.foreground = const Color(0xffbc4c00),
    this.emphasis = const Color(0xffbc4c00),
    this.muted = const Color.fromRGBO(251, 143, 68, 0.4),
    this.subtle = const Color(0xfffff1e5),
  });

  factory Severe.dark() {
    return const Severe(
      foreground: Color(0xffdb6d28),
      emphasis: Color(0xffbd561d),
      muted: Color.fromRGBO(219, 109, 40, 0.4),
      subtle: Color.fromRGBO(219, 109, 40, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Danger {
  const Danger({
    this.foreground = const Color(0xffcf222e),
    this.emphasis = const Color(0xffcf222e),
    this.muted = const Color.fromRGBO(255, 129, 130, 0.4),
    this.subtle = const Color(0xffffebe9),
  });

  factory Danger.dark() {
    return const Danger(
      foreground: Color(0xfff85149),
      emphasis: Color(0xffda3633),
      muted: Color.fromRGBO(248, 81, 73, 0.4),
      subtle: Color.fromRGBO(248, 81, 73, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Open {
  const Open({
    this.foreground = const Color(0xff1a7f37),
    this.emphasis = const Color(0xff2da44e),
    this.muted = const Color.fromRGBO(74, 194, 107, 0.4),
    this.subtle = const Color(0xffdafbe1),
  });

  factory Open.dark() {
    return const Open(
      foreground: Color(0xff3fb950),
      emphasis: Color(0xff238636),
      muted: Color.fromRGBO(46, 160, 67, 0.4),
      subtle: Color.fromRGBO(46, 160, 67, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Closed {
  const Closed({
    this.foreground = const Color(0xffcf222e),
    this.emphasis = const Color(0xffcf222e),
    this.muted = const Color.fromRGBO(255, 129, 130, 0.4),
    this.subtle = const Color(0xffffebe9),
  });

  factory Closed.dark() {
    return const Closed(
      foreground: Color(0xfff85149),
      emphasis: Color(0xfff85149),
      muted: Color.fromRGBO(248, 81, 73, 0.4),
      subtle: Color.fromRGBO(248, 81, 73, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Done {
  const Done({
    this.foreground = const Color(0xff8250df),
    this.emphasis = const Color(0xff8250df),
    this.muted = const Color.fromRGBO(194, 151, 255, 0.4),
    this.subtle = const Color(0xfffbefff),
  });

  factory Done.dark() {
    return const Done(
      foreground: Color(0xffa371f7),
      emphasis: Color(0xff8957e5),
      muted: Color.fromRGBO(163, 113, 247, 0.4),
      subtle: Color.fromRGBO(163, 113, 247, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

class Sponsors {
  const Sponsors({
    this.foreground = const Color(0xffbf3989),
    this.emphasis = const Color(0xffbf3989),
    this.muted = const Color.fromRGBO(255, 128, 200, 0.4),
    this.subtle = const Color(0xffffeff7),
  });

  factory Sponsors.dark() {
    return const Sponsors(
      foreground: Color(0xffdb61a2),
      emphasis: Color(0xffbf4b8a),
      muted: Color.fromRGBO(219, 97, 162, 0.4),
      subtle: Color.fromRGBO(219, 97, 162, 0.15),
    );
  }

  final Color foreground;
  final Color emphasis;
  final Color muted;
  final Color subtle;
}

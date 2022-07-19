import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:primer/primer.dart' hide Border;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primer Demo',
      builder: (context, child) => PrimerApp(
        parentBrightness: Theme.of(context).brightness,
        child: child!,
      ),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primerTheme = PrimerTheme.of(context);
    return Scaffold(
      backgroundColor: primerTheme.canvas.dflt,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Typography',
                style: primerTheme.typography.h1,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text('Heading styles', style: primerTheme.typography.h2),
                  Divider(color: primerTheme.neutral.emphasis),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: primerTheme.foreground.dflt,
                      ),
                      children: [
                        const TextSpan(text: 'Use '),
                        WidgetSpan(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: primerTheme.neutral.muted,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Text(
                                'PrimerTypography.h1',
                                style: GoogleFonts.jetBrainsMono(),
                              ),
                            ),
                          ),
                        ),
                        const TextSpan(text: ' - '),
                        WidgetSpan(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: primerTheme.neutral.muted,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Text(
                                'PrimerTypography.h6',
                                style: GoogleFonts.jetBrainsMono(),
                              ),
                            ),
                          ),
                        ),
                        const TextSpan(
                          text:
                              ' to change the font size and weight to match Primer\'s styles.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: primerTheme.neutral.muted,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Heading 1', style: primerTheme.typography.h1),
                          const SizedBox(height: 8),
                          Text('Heading 2', style: primerTheme.typography.h2),
                          const SizedBox(height: 8),
                          Text('Heading 3', style: primerTheme.typography.h3),
                          const SizedBox(height: 8),
                          Text('Heading 4', style: primerTheme.typography.h4),
                          const SizedBox(height: 8),
                          Text('Heading 5', style: primerTheme.typography.h5),
                          const SizedBox(height: 8),
                          Text('Heading 6', style: primerTheme.typography.h6),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Typographic styles',
                    style: primerTheme.typography.h2,
                  ),
                  Divider(color: primerTheme.neutral.emphasis),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: primerTheme.foreground.dflt,
                      ),
                      children: [
                        const TextSpan(
                            text:
                                'Change the font weight, styles, and alignment with these '),
                        WidgetSpan(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: primerTheme.neutral.muted,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Text(
                                'TextStyle',
                                style: GoogleFonts.jetBrainsMono(),
                              ),
                            ),
                          ),
                        ),
                        const TextSpan(text: 's.'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: primerTheme.neutral.muted,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Normal', style: primerTheme.typography.normal),
                          const SizedBox(height: 8),
                          Text('Italic', style: primerTheme.typography.italic),
                          const SizedBox(height: 8),
                          Text('Bold', style: primerTheme.typography.bold),
                          const SizedBox(height: 8),
                          Text('Semi-bold',
                              style: primerTheme.typography.semiBold),
                          const SizedBox(height: 8),
                          Text('Light', style: primerTheme.typography.light),
                          const SizedBox(height: 8),
                          Text(
                            'Underline',
                            style: primerTheme.typography.underline,
                          ),
                          const SizedBox(height: 8),
                          Text('Small', style: primerTheme.typography.small),
                          const SizedBox(height: 8),
                          Text(
                            'Small bold',
                            style: primerTheme.typography.smallBold,
                          ),
                          const SizedBox(height: 8),
                          Text('Monospace', style: primerTheme.typography.mono),
                          const SizedBox(height: 8),
                          Text('Lead', style: primerTheme.typography.lead),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Colors',
                style: primerTheme.typography.h1,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Text(
                      'You can use the colors below in the following ways:'),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SyntaxView(
                        code:
                            '''/// 1: Via the current `PrimerThemeData` (recommended)
PrimerTheme.of(context).foreground.dflt;
PrimerTheme.of(context).accent.foreground;
                        
/// 2: Via the color classes themselves (not recommended)
Accent().foreground;
Attention.dark().foreground;''',
                        syntax: Syntax.DART,
                        syntaxTheme: SyntaxTheme.vscodeDark(),
                        withZoom: false,
                        fontSize: 14.0,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Foreground',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The primary color for text and icons in any given interface.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.foreground.dflt,
                        label: 'default',
                      ),
                      ColorCell(
                        color: primerTheme.foreground.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.foreground.subtle,
                        label: 'subtle',
                      ),
                      ColorCell(
                        color: primerTheme.foreground.onEmphasis,
                        label: 'onEmphasis',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Canvas',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors used for the backgrounds of user interfaces.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.canvas.dflt,
                        label: 'default',
                      ),
                      ColorCell(
                        color: primerTheme.canvas.overlay,
                        label: 'overlay',
                      ),
                      ColorCell(
                        color: primerTheme.canvas.inset,
                        label: 'inset',
                      ),
                      ColorCell(
                        color: primerTheme.canvas.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Border',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors used for drawing borders.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.border.dflt,
                        label: 'default',
                      ),
                      ColorCell(
                        color: primerTheme.border.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.border.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Neutral',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors used to highlight content without any added meaning.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.neutral.emphasisPlus,
                        label: 'emphasisPlus',
                      ),
                      ColorCell(
                        color: primerTheme.neutral.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.neutral.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.neutral.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Accent',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for drawing attention to interactive elements, like links or buttons.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.accent.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.accent.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.accent.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.accent.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Success',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for emphasizing a positive message. Commonly used to expresses the completion or positive outcome of a task.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.success.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.success.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.success.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.success.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Attention',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for highlighting text or icons that require the user\'s attention. Commonly used to warn of pending tasks or to highlight active content.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.attention.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.attention.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.attention.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.attention.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Severe',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for emphasizing a level of severity between Attention and Danger. Commonly used when there are more than 3 levels of states, for example in heatmaps.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.severe.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.severe.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.severe.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.severe.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Danger',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for emphasizing an error or a blocking status. Action is required. Commonly used to inform of errors or other negative messages.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.danger.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.danger.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.danger.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.danger.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Open',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for styling UI elements that refer to open tasks or workflows.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.open.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.open.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.open.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.open.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Closed',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for styling UI elements that refer to closed tasks or workflows.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.closed.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.closed.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.closed.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.closed.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Done',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Completion colors for productivity and code review workflows.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.done.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.done.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.done.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.done.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Sponsors',
                    style: primerTheme.typography.h3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Colors for styling Sponsors-related UI.',
                    style: primerTheme.typography.h6,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ColorCell(
                        color: primerTheme.sponsors.foreground,
                        label: 'foreground',
                      ),
                      ColorCell(
                        color: primerTheme.sponsors.emphasis,
                        label: 'emphasis',
                      ),
                      ColorCell(
                        color: primerTheme.sponsors.muted,
                        label: 'muted',
                      ),
                      ColorCell(
                        color: primerTheme.sponsors.subtle,
                        label: 'subtle',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorCell extends StatelessWidget {
  const ColorCell({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    final primerTheme = PrimerTheme.of(context);
    Color labelColor =
        color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    return SizedBox(
      height: 70,
      width: 150,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            label,
            style: primerTheme.typography.h4.copyWith(
              color: labelColor,
            ),
          ),
        ),
      ),
    );
  }
}

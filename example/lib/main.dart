import 'package:flutter/material.dart';
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
      builder: (context, child) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        return PrimerTheme(
          data: isDark ? PrimerThemeData.dark() : PrimerThemeData.light(),
          child: child!,
        );
      },
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
      /*appBar: AppBar(
        title: Text(
          'Primer Demo',
          style: primerTheme.typography.h2,
        ),
        backgroundColor: primerTheme.canvas.dflt,
        elevation: 0,
      ),*/
      body: DefaultTextStyle(
        style: TextStyle(
          color: primerTheme.foreground.dflt,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
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
              SliverList(
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
                            Text('Semi-bold', style: primerTheme.typography.semiBold),
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
            ],
          ),
        ),
      ),
    );
  }
}

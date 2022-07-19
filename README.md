# primer_flutter

Flutter themes consistent with [Primer](https://primer.style) style guidelines

DISCLAIMER: This project is not affiliated with the Primer or GitHub organizations.

## Features
✨ `PrimerThemeData` class which provides Brightness-aware colors and text styles to your app

✨ `PrimerTheme` InheritedWidget which provides the `PrimerThemeData` to descendant widgets

✨ `PrimerApp` convenience widget that provides pre-configured, Brightness-aware Primer theme configurations.

## Installation Options
1. From pub.dev:
```shell
$ flutter pub add primer_flutter
```
2. From Git:
```yaml
primer:
  git: https://github.com/GroovinChip/primer_flutter.git
```

## Quick Start

1. Wrap your app with a `PrimerApp` widget using your "root" widget's `builder` property and give it the brightness 
of the parent widget's theme. Make sure to set the `theme` and `darkTheme` properties of the root widget so that the
brightness can be retrieved via `.of(context)` call.
```dart
// Use MaterialApp or other "app" root widget that has a builder property 
// (e.g. CupertinoApp, MacosApp, etc.)
MaterialApp(
  theme: ThemeData.light(),
  darkTheme: ThemeData.dark(),
  // By using ThemeMode.system, we ensure that the correct theme will be shown
  // based on the user's system theme.
  themeMode: ThemeMode.system,
  builder: (context, child) => PrimerApp(
    parentBrightness: Theme.of(context).brightness,
    child: child!,
  ),
  home: MyHomePage(),
),
```
2. Access the theme's colors and text styles by calling `PrimerTheme.of(context)`. Here's a small example:
```dart
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primerTheme = PrimerTheme.of(context);
    return Scaffold(
      backgroundColor: primerTheme.canvas.dflt,
      body: Center(
        child: Text(
          'Hello, world!',
          style: primerTheme.typography.h1,
        ),
      ),
    );
  }
}
```

# primer

A Flutter theme consistent with [Primer](https://primer.style) style guidelines

DISCLAIMER: This project is not affiliated with the Primer or GitHub organizations.

## Features
✨ `PrimerThemeData` class which provides Brightness-aware colors and text styles to your app

✨ `PrimerTheme` InheritedWidget which provides the `PrimerThemeData` to descendant widgets

✨ `PrimerApp` convenience widget that provides automatic Primer theme configurations based on the `Brightness` it 
is provided with.

## Installation
This package is **not** yet available on pub.dev. To use it in your app, depend on it in your `pubspec.yaml` like so:
```yaml
primer:
  git: https://github.com/GroovinChip/primer.git
```

## Quick Start

1. Wrap your app in a `PrimerTheme` widget and give it a `PrimerThemeData` based on the current Brightness:
```dart
MaterialApp( // or other "app" entrypoint widget that has a builder property
  theme: ThemeData.light(),
  darkTheme: ThemeData.dark(),
  themeMode: ThemeMode.system,
  builder: (context, child) {
    return PrimerApp(
      parentBrightness: Theme.of(context).brightness,
      child: child!,
    );  
  },
  home: YourAppHere(),
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
---
TODO:
- [ ] High-contrast themes
- [ ] Colorblind themes
- [ ] Tritanopia themes
- [ ] Dimmed theme (dark only)
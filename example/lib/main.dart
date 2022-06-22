import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

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
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: 'Primer Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final primerTheme = PrimerTheme.of(context);
    return Scaffold(
      backgroundColor: primerTheme.canvas.dflt,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: primerTheme.typography.h2,
        ),
        backgroundColor: primerTheme.canvas.dflt,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: primerTheme.typography.emphasized,
            ),
            Text(
              '$_counter',
              style: primerTheme.typography.h1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primerTheme.accent.foreground,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: primerTheme.foreground.onEmphasis,
        ),
      ),
    );
  }
}

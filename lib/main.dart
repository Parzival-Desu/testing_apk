import 'package:flutter/material.dart';

void main() {
  runApp(const MyThemedApp());
}

class MyThemedApp extends StatelessWidget {
  const MyThemedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themed Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'GreatVibes',
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: const Text('Themes, Colors & Fonts'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.all(24),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hello Flutter!', style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 16),
                Text(
                  'This app demonstrates ThemeData, custom colors, and fonts — just like in the PDF.',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('CLICK ME'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
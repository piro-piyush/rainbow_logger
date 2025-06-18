import 'package:flutter/material.dart';
import 'package:rainbow_logger/rainbow_logger.dart';

/// The main entry point for the Rainbow Logger example application.
///
/// This app demonstrates the use of `RainbowLogger`, a colorful logging utility
/// for enhanced readability in Flutter terminal/console output.
void main() {
  runApp(const MyApp());

  // ─────────────────────────────────────────────
  // Static Method Logging Examples
  // ─────────────────────────────────────────────

  // Success message with ✅ prefix and green color
  RainbowLogger.successPrint('Operation completed successfully!');

  // Error message with ❌ prefix and red color
  RainbowLogger.errorPrint('An unexpected error occurred!');

  // Info message with ℹ️ prefix and blue color
  RainbowLogger.infoPrint('This is some helpful info.');

  // Warning message with ⚠️ prefix and amber color
  RainbowLogger.warningPrint('Be careful with this operation!');

  // Custom styled message with purple color and emoji prefix
  RainbowLogger.logPrint(
    'Custom styled log',
    color: Colors.purple,
    prefix: '🔮',
  );

  // ─────────────────────────────────────────────
  // Instance-based Logger Example
  // ─────────────────────────────────────────────

  final rainbowLogger = RainbowLogger(
    prefix: '🚀',         // Custom emoji prefix
    suffix: '🔥',         // Emoji suffix
    color: Colors.teal,   // Custom ANSI-compatible color
    showTimestamp: true,  // Enable timestamp
  );

  // Logs using instance settings
  rainbowLogger.print('Launching rainbow logger instance!');
}

/// The root widget of the Rainbow Logger demo application.
///
/// Displays a simple home screen with a button that prints logs
/// when pressed.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rainbow Logger Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rainbow Logger Example'),
    );
  }
}

/// A simple home page that triggers logging when a button is clicked.
///
/// This widget demonstrates logging through button interaction.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  /// The title displayed in the app bar.
  final String title;

  /// Triggers multiple types of logs using `RainbowLogger` static methods.
  ///
  /// This function is called when the user taps the "Print Logs to Console" button.
  void logExamples() {
    RainbowLogger.successPrint('Button clicked successfully');
    RainbowLogger.errorPrint('Error while processing');
    RainbowLogger.infoPrint('User opened home screen');
    RainbowLogger.warningPrint('Low storage space');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: ElevatedButton(
          onPressed: logExamples,
          child: const Text('Print Logs to Console'),
        ),
      ),
    );
  }
}

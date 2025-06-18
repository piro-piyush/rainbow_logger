import 'package:flutter/material.dart';

/// A utility class that defines commonly used [Color] constants
/// and converts them to their corresponding ANSI escape sequences.
///
/// This is primarily used for styling console log messages with
/// colorful and expressive outputs using the `RainbowLogger`.
///
/// Example usage:
/// ```dart
/// print('${RainbowColors.toAnsi(RainbowColors.success)}Success!');
/// ```
/// A utility class that defines colors used for styled console logs.
///
/// It also provides a method to convert [Color] objects into ANSI escape codes
/// for terminal output.
class RainbowColors {
  /// ANSI color for error messages.
  static const Color error = Colors.redAccent;

  /// ANSI color for success messages.
  static const Color success = Colors.green;

  /// ANSI color for informational messages.
  static const Color info = Colors.blueAccent;

  /// ANSI color for warning messages.
  static const Color warning = Colors.orange;

  /// ANSI default color for general log messages.
  static const Color log = Colors.white;

  /// Red color.
  static const Color red = Colors.red;

  /// Red accent color.
  static const Color redAccent = Colors.redAccent;

  /// Green color.
  static const Color green = Colors.green;

  /// Green accent color.
  static const Color greenAccent = Colors.greenAccent;

  /// Blue color.
  static const Color blue = Colors.blue;

  /// Blue accent color.
  static const Color blueAccent = Colors.blueAccent;

  /// Yellow color.
  static const Color yellow = Colors.yellow;

  /// Yellow accent color.
  static const Color yellowAccent = Colors.yellowAccent;

  /// Orange accent color.
  static const Color orangeAccent = Colors.orangeAccent;

  /// Pink color.
  static const Color pink = Colors.pink;

  /// Pink accent color.
  static const Color pinkAccent = Colors.pinkAccent;

  /// Purple color.
  static const Color purple = Colors.purple;

  /// Purple accent color.
  static const Color purpleAccent = Colors.purpleAccent;

  /// Cyan color.
  static const Color cyan = Colors.cyan;

  /// Cyan accent color.
  static const Color cyanAccent = Colors.cyanAccent;

  /// Amber color.
  static const Color amber = Colors.amber;

  /// Amber accent color.
  static const Color amberAccent = Colors.amberAccent;

  /// Indigo color.
  static const Color indigo = Colors.indigo;

  /// Indigo accent color.
  static const Color indigoAccent = Colors.indigoAccent;

  /// Teal color.
  static const Color teal = Colors.teal;

  /// Teal accent color.
  static const Color tealAccent = Colors.tealAccent;

  /// Lime color.
  static const Color lime = Colors.lime;

  /// Lime accent color.
  static const Color limeAccent = Colors.limeAccent;

  /// Brown color.
  static const Color brown = Colors.brown;

  /// Blue grey color.
  static const Color blueGrey = Colors.blueGrey;

  /// Grey color.
  static const Color grey = Colors.grey;

  /// White color.
  static const Color white = Colors.white;

  /// Black color.
  static const Color black = Colors.black;

  /// Converts a [Color] to an ANSI escape string for terminal display.
  ///
  /// Returns a string like `\x1B[31m` for red, `\x1B[32m` for green, etc.
  ///
  /// Unrecognized colors will return the ANSI reset code: `\x1B[0m`.
  static String toAnsi(Color color) {
    if (color == red || color == redAccent || color == error) return '\x1B[31m';
    if (color == green || color == greenAccent || color == success) {
      return '\x1B[32m';
    }
    if (color == yellow ||
        color == yellowAccent ||
        color == amber ||
        color == amberAccent ||
        color == lime ||
        color == limeAccent ||
        color == warning) {
      return '\x1B[33m';
    }
    if (color == blue ||
        color == blueAccent ||
        color == indigo ||
        color == indigoAccent ||
        color == info) {
      return '\x1B[34m';
    }
    if (color == purple ||
        color == purpleAccent ||
        color == pink ||
        color == pinkAccent) {
      return '\x1B[35m';
    }
    if (color == cyan ||
        color == cyanAccent ||
        color == teal ||
        color == tealAccent) {
      return '\x1B[36m';
    }
    if (color == white ||
        color == grey ||
        color == blueGrey ||
        color == brown ||
        color == log) {
      return '\x1B[37m';
    }
    if (color == black) return '\x1B[30m';
    return '\x1B[0m';
  }
}

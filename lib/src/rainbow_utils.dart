import 'package:flutter/material.dart';
import 'rainbow_colors.dart';

/// A utility class for supporting helper methods used by RainbowLogger.
///
/// Includes time formatting, padding strings, and ANSI test utilities.
class RainbowUtils {
  RainbowUtils._(); // Private constructor to prevent instantiation

  /// Returns current time in HH:mm:ss format.
  ///
  /// Example: `"14:07:59"`
  static String getCurrentTime() {
    final now = DateTime.now();
    return '${_padTwo(now.hour)}:${_padTwo(now.minute)}:${_padTwo(now.second)}';
  }

  /// Pads a number to ensure 2 digits (e.g., 4 becomes "04").
  ///
  /// Internal helper for time formatting.
  static String _padTwo(int number) => number.toString().padLeft(2, '0');

  /// Returns a string with all available [RainbowColors] previewed as ANSI.
  ///
  /// Helpful for testing in supported terminals or IDEs with ANSI support.
  /// Prints color labels like:
  ///
  /// ```
  /// [Red] -> 🟥 Red Color
  /// [Green] -> 🟩 Green Color
  /// ```
  static void printAnsiColorPreview() {
    const samples = {
      'Red': RainbowColors.red,
      'Green': RainbowColors.green,
      'Yellow': RainbowColors.yellow,
      'Blue': RainbowColors.blue,
      'Purple': RainbowColors.purple,
      'Cyan': RainbowColors.cyan,
      'White': RainbowColors.white,
      'Grey': RainbowColors.grey,
      'Black': RainbowColors.black,
    };

    for (final entry in samples.entries) {
      final ansi = RainbowColors.toAnsi(entry.value);
      // ANSI formatted line: [ColorName] -> styled sample
      debugPrint(
          '$ansi[${entry.key}] → Sample log line in ${entry.key}\x1B[0m');
    }
  }

  /// Repeats a string [s] [count] number of times.
  ///
  /// Example:
  /// ```dart
  /// RainbowUtils.repeat('🟩', 3); // "🟩🟩🟩"
  /// ```
  static String repeat(String s, int count) => List.filled(count, s).join();

  /// Returns the current timestamp in HH:mm:ss format.
  static String getTimestamp() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:'
        '${now.minute.toString().padLeft(2, '0')}:'
        '${now.second.toString().padLeft(2, '0')}';
  }
}

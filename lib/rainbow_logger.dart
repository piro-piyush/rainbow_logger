import 'package:flutter/material.dart';
part 'rainbow_colors.dart';

/// A colorful and expressive logger for Flutter terminal/debug output.
///
/// `RainbowLogger` uses ANSI escape codes to print log messages in various colors
/// and styles, making terminal logs more readable and visually distinct.
///
/// Example usage:
/// ```dart
/// RainbowLogger.errorPrint('An error occurred');
/// RainbowLogger.successPrint('Operation successful!');
/// ```
///
/// You can also instantiate it:
/// ```dart
/// final logger = RainbowLogger(prefix: '🔧', color: Colors.cyan);
/// logger.print('Custom log message');
/// ```
class RainbowLogger {
  /// Optional prefix before the log message, e.g. emoji or tag.
  final String prefix;

  /// Optional suffix after the log message.
  final String suffix;

  /// The color to apply to the log message. Defaults to white.
  final Color color;

  /// Whether to include a timestamp in the log message.
  final bool showTimestamp;

  /// Creates a customizable logger instance.
  const RainbowLogger({
    this.prefix = '',
    this.suffix = '',
    this.color = RainbowColors.log,
    this.showTimestamp = false,
  });

  /// Prints a message with the configured prefix, suffix, color, and timestamp.
  void print(String message) {
    final timestamp = showTimestamp ? '[${_now()}] ' : '';
    final formatted = '$timestamp$prefix $message $suffix';
    _coloredPrint(formatted, color);
  }

  // ───────────────────────────────
  // Static convenience methods
  // ───────────────────────────────

  /// Prints an error message in red with optional prefix and timestamp.
  static void errorPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.error, prefix ?? '❌', showTimestamp);
  }

  /// Prints a success message in green with optional prefix and timestamp.
  static void successPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.success, prefix ?? '✅', showTimestamp);
  }

  /// Prints an informational message in blue with optional prefix and timestamp.
  static void infoPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.info, prefix ?? 'ℹ️', showTimestamp);
  }

  /// Prints a warning message in orange with optional prefix and timestamp.
  static void warningPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.warning, prefix ?? '⚠️', showTimestamp);
  }

  /// Prints a general log message with optional custom color, prefix, suffix, and timestamp.
  static void logPrint(
      String message, {
        String? prefix,
        Color? color,
        bool showTimestamp = false,
        String? suffix,
      }) {
    _styledPrint(
      message,
      color ?? RainbowColors.log,
      prefix ?? '',
      showTimestamp,
      suffix ?? '',
    );
  }

  /// Internal helper to print styled messages with color, prefix, suffix, and timestamp.
  static void _styledPrint(
      String message,
      Color color,
      String prefix,
      bool showTimestamp, [
        String suffix = '',
      ]) {
    final timestamp = showTimestamp ? '[${_now()}] ' : '';
    final formatted = '$timestamp$prefix $message $suffix';
    _coloredPrint(formatted, color);
  }

  /// Applies ANSI color and prints the message using `debugPrint`.
  static void _coloredPrint(String message, Color color) {
    final ansi = RainbowColors.toAnsi(color);
    debugPrint('$ansi$message\u001b[0m'); // Resets color with \u001b[0m
  }

  /// Returns the current time formatted as `HH:mm:ss`.
  static String _now() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:'
        '${now.minute.toString().padLeft(2, '0')}:'
        '${now.second.toString().padLeft(2, '0')}';
  }
}

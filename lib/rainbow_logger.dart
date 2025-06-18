import 'package:flutter/material.dart';
part 'rainbow_colors.dart';

/// A colorful and expressive logger for Flutter terminal/debug output.
///
/// `RainbowLogger` makes it easy to distinguish log messages in your terminal
/// or debug console using ANSI escape sequences and emoji icons. It allows
/// both static (one-liner) and instance-based logging with rich configuration options.
///
/// # Features:
/// - Emoji prefixes for visual cues (e.g., ❌ error, ✅ success, ⚠️ warning)
/// - ANSI escape codes to color messages based on Flutter `Color`
/// - Timestamped output for better traceability
/// - Reusable logger instances with custom style options
///
/// # Example (Static Methods):
/// ```dart
/// RainbowLogger.errorPrint('Something went wrong');
/// RainbowLogger.successPrint('All good!');
/// ```
///
/// # Example (Instance Usage):
/// ```dart
/// final logger = RainbowLogger(
///   prefix: '🔧',
///   color: Colors.cyan,
///   showTimestamp: true,
/// );
/// logger.print('Instance-based logging');
/// ```
class RainbowLogger {
  /// Emoji or symbol prefix for the message.
  /// Helps to visually identify the type of message.
  final String prefix;

  /// Text or emoji suffix to be added at the end of the log.
  final String suffix;

  /// The color of the message text using Flutter's [Color] class.
  /// This is translated to ANSI color codes for terminal display.
  final Color color;

  /// Whether to prepend the log with a timestamp in HH:mm:ss format.
  final bool showTimestamp;

  /// Constructs a reusable logger instance.
  ///
  /// [prefix]: Emoji or tag before message.
  /// [suffix]: Emoji or tag after message.
  /// [color]: Text color (translated to ANSI).
  /// [showTimestamp]: Display time of log.
  const RainbowLogger({
    this.prefix = '',
    this.suffix = '',
    this.color = RainbowColors.log,
    this.showTimestamp = false,
  });

  /// Logs a message using the instance settings.
  ///
  /// The message is formatted with [prefix], [suffix], [color], and optional timestamp.
  void print(String message) {
    final timestamp = showTimestamp ? '[${_now()}] ' : '';
    final formatted = '$timestamp$prefix $message $suffix';
    _coloredPrint(formatted, color);
  }

  // ─────────────────────────────────────────────────────────────
  // Static Shortcut Methods (for Quick Usage Without Instantiation)
  // ─────────────────────────────────────────────────────────────

  /// Logs an error message in red with ❌ prefix.
  static void errorPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.error, prefix ?? '❌', showTimestamp);
  }

  /// Logs a success message in green with ✅ prefix.
  static void successPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.success, prefix ?? '✅', showTimestamp);
  }

  /// Logs an info message in blue with ℹ️ prefix.
  static void infoPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.info, prefix ?? 'ℹ️', showTimestamp);
  }

  /// Logs a warning message in amber/orange with ⚠️ prefix.
  static void warningPrint(
      String message, {
        String? prefix,
        bool showTimestamp = true,
      }) {
    _styledPrint(message, RainbowColors.warning, prefix ?? '⚠️', showTimestamp);
  }

  /// Logs a custom message with optional styling.
  ///
  /// Customize [prefix], [color], [showTimestamp], and [suffix].
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

  // ─────────────────────────────────────────────────────────────
  // Internal Helpers
  // ─────────────────────────────────────────────────────────────

  /// Formats and logs message with custom styles.
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

  /// Converts Flutter [Color] to ANSI and prints the message with reset.
  static void _coloredPrint(String message, Color color) {
    final ansi = RainbowColors.toAnsi(color);
    debugPrint('$ansi$message\u001b[0m'); // Reset color at end
  }

  /// Returns formatted current system time as HH:mm:ss.
  static String _now() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:'
        '${now.minute.toString().padLeft(2, '0')}:'
        '${now.second.toString().padLeft(2, '0')}';
  }
}

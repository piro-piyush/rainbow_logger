import 'package:flutter/material.dart';
import 'rainbow_colors.dart';
import 'rainbow_writer.dart';
import 'rainbow_utils.dart';
import 'rainbow_themes.dart';

/// A colorful and expressive logger for Flutter terminal/debug output.
///
/// Supports both static one-liner logging and instance-based logging with
/// custom configuration including emoji, colors, timestamp, suffix, etc.
class RainbowLogger {
  /// Emoji or symbol prefix for the log message.
  final String prefix;

  /// Emoji or symbol suffix for the log message.
  final String suffix;

  /// Color of the log text.
  final Color color;

  /// Whether to include the timestamp in logs.
  final bool showTimestamp;

  /// Output stream for logging (stdout by default).
  final RainbowWriter writer;

  /// Constructs a configurable logger instance.
  const RainbowLogger({
    this.prefix = '',
    this.suffix = '',
    this.color = RainbowColors.log,
    this.showTimestamp = false,
    this.writer = const RainbowWriter(),
  });

  /// Prints a message using this instance’s styling (with newline).
  void print(String message) {
    final timestamp = showTimestamp ? '[${RainbowUtils.getTimestamp()}] ' : '';
    final formatted = '$timestamp$prefix $message $suffix';
    writer.writeLine(formatted, color);
  }

  /// Writes a message using this instance’s styling (no newline).
  void write(String message) {
    final timestamp = showTimestamp ? '[${RainbowUtils.getTimestamp()}] ' : '';
    final formatted = '$timestamp$prefix $message $suffix';
    writer.write(formatted, color);
  }

  // ─────────────────────────────────────────────────────────────────────
  // Static Shortcut Logging
  // ─────────────────────────────────────────────────────────────────────

  /// Prints an error log with ❌ emoji in red.
  static void error(String message, {bool showTimestamp = true}) {
    _styled(message, RainbowColors.error, '❌', showTimestamp);
  }

  /// Prints a success log with ✅ emoji in green.
  static void success(String message, {bool showTimestamp = true}) {
    _styled(message, RainbowColors.success, '✅', showTimestamp);
  }

  /// Prints an info log with ℹ️ emoji in blue.
  static void info(String message, {bool showTimestamp = true}) {
    _styled(message, RainbowColors.info, 'ℹ️', showTimestamp);
  }

  /// Prints a warning log with ⚠️ emoji in amber/orange.
  static void warning(String message, {bool showTimestamp = true}) {
    _styled(message, RainbowColors.warning, '⚠️', showTimestamp);
  }

  /// Prints a fully custom log with specified emoji, color, and timestamp.
  static void log({
    required String message,
    Color color = RainbowColors.log,
    String prefix = '',
    String suffix = '',
    bool showTimestamp = false,
  }) {
    final timestamp = showTimestamp ? '[${RainbowUtils.getTimestamp()}] ' : '';
    final formatted = '$timestamp$prefix $message $suffix';
    const RainbowWriter().writeLine(formatted, color);
  }

  /// Internal method to format and print with prefix/color/timestamp.
  static void _styled(
      String message,
      Color color,
      String emoji,
      bool showTimestamp,
      ) {
    final timestamp = showTimestamp ? '[${RainbowUtils.getTimestamp()}] ' : '';
    final formatted = '$timestamp$emoji $message';
    const RainbowWriter().writeLine(formatted, color);
  }
}

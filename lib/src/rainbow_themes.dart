import 'package:flutter/material.dart';

/// A simple model to encapsulate common style settings for a logger.
///
/// Used to quickly apply a consistent visual style
/// (prefix, suffix, color, timestamp preference) for logs.
class RainbowTheme {
  /// Constructs a [RainbowTheme] with given styling options.
  const RainbowTheme({
    required this.prefix,
    required this.suffix,
    required this.color,
    this.showTimestamp = true,
  });

  /// Prefix to prepend before log message (emoji or tag).
  final String prefix;

  /// Suffix to append after the log message (emoji or tag).
  final String suffix;

  /// Main color of the log message, used in terminal output.
  final Color color;

  /// Whether to show timestamp when printing.
  final bool showTimestamp;
}

/// A utility class containing predefined logging themes.
///
/// Each theme includes a color, emoji prefix, optional suffix, and timestamp toggle.
/// Can be used with `RainbowLogger.fromTheme()` to quickly apply a logging style.
class RainbowThemes {
  RainbowThemes._(); // Prevent instantiation

  /// Theme for success messages (✅ green).
  static const RainbowTheme success = RainbowTheme(
    prefix: '✅',
    suffix: '',
    color: Colors.green,
    showTimestamp: true,
  );

  /// Theme for error messages (❌ red).
  static const RainbowTheme error = RainbowTheme(
    prefix: '❌',
    suffix: '',
    color: Colors.redAccent,
    showTimestamp: true,
  );

  /// Theme for informational messages (ℹ️ blue).
  static const RainbowTheme info = RainbowTheme(
    prefix: 'ℹ️',
    suffix: '',
    color: Colors.blueAccent,
    showTimestamp: true,
  );

  /// Theme for warnings (⚠️ amber/orange).
  static const RainbowTheme warning = RainbowTheme(
    prefix: '⚠️',
    suffix: '',
    color: Colors.orange,
    showTimestamp: true,
  );

  /// A custom neutral theme (📝 white).
  static const RainbowTheme note = RainbowTheme(
    prefix: '📝',
    suffix: '',
    color: Colors.white,
    showTimestamp: false,
  );

  /// A whimsical debug theme (🧪 purple).
  static const RainbowTheme debug = RainbowTheme(
    prefix: '🧪',
    suffix: '',
    color: Colors.purple,
    showTimestamp: false,
  );

  /// A space-themed log style (🚀 teal, no timestamp).
  static const RainbowTheme rocket = RainbowTheme(
    prefix: '🚀',
    suffix: '🔥',
    color: Colors.teal,
    showTimestamp: false,
  );
}

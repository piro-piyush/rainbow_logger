import 'package:flutter/material.dart';
import 'rainbow_colors.dart';

/// Handles the actual printing of messages with ANSI colors.
class RainbowWriter {
  /// Constructs a [RainbowWriter] for writing colored logs.
  const RainbowWriter();

  /// Writes a message with color and a newline.
  void writeLine(String message, Color color) {
    final ansi = RainbowColors.toAnsi(color);
    // \x1B[0m resets the color
    debugPrint('$ansi$message\x1B[0m');
  }

  /// Writes a message with color without adding a newline.
  void write(String message, Color color) {
    final ansi = RainbowColors.toAnsi(color);
    // ignore: avoid_print
    // Using `print()` here directly to avoid adding newline
    // Because debugPrint always adds a newline
    // You may customize this for different platforms
    // ignore: avoid_print
    print('$ansi$message\x1B[0m');
  }
}

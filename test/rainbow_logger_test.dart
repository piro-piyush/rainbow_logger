import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_logger/rainbow_logger.dart';

void main() {
  group('RainbowLogger', () {
    late List<String> printedMessages;

    // Override debugPrint to capture logs
    setUp(() {
      printedMessages = [];
      debugPrint = (String? message, {int? wrapWidth}) {
        if (message != null) printedMessages.add(message);
      };
    });

    test('errorPrint logs with ❌ prefix and red color', () {
      RainbowLogger.errorPrint("Test error");

      expect(printedMessages.length, 1);
      expect(printedMessages.first.contains('❌'), isTrue);
      expect(printedMessages.first.contains('\x1B[31m'), isTrue); // Red ANSI
    });

    test('successPrint logs with ✅ prefix and green color', () {
      RainbowLogger.successPrint("Test success");

      expect(printedMessages.length, 1);
      expect(printedMessages.first.contains('✅'), isTrue);
      expect(printedMessages.first.contains('\x1B[32m'), isTrue); // Green ANSI
    });

    test('infoPrint logs with ℹ️ prefix and blue color', () {
      RainbowLogger.infoPrint("Test info");

      expect(printedMessages.length, 1);
      expect(printedMessages.first.contains('ℹ️'), isTrue);
      expect(printedMessages.first.contains('\x1B[34m'), isTrue); // Blue ANSI
    });

    test('Reusable instance works and logs with custom prefix/suffix', () {
      final logger = RainbowLogger(
        prefix: "🎯",
        suffix: "END",
        color: Colors.cyan,
        showTimestamp: false,
      );

      logger.print("Hello reusable");

      expect(printedMessages.length, 1);
      expect(printedMessages.first.contains('🎯 Hello reusable END'), isTrue);
    });
  });
}

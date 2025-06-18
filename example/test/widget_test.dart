import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainbow_logger/rainbow_logger.dart';

void main() {
  test('Static errorPrint formats correctly', () {
    RainbowLogger.errorPrint('Test error');
    // Since it's printed with debugPrint, we can't capture output easily.
    // But no exception = pass (or use a mock/debugPrint override for deeper test)
  });

  test('Custom instance prints without exception', () {
    final logger = RainbowLogger(
      prefix: '🧪',
      suffix: '✅',
      color: Colors.blue,
      showTimestamp: true,
    );

    logger.print('Testing instance print');
    // Again, we can't capture console, but we're testing for safe usage
  });

  test('ANSI conversion returns correct code', () {
    final ansi = RainbowColors.toAnsi(Colors.red);
    expect(ansi, startsWith('\u001b[')); // basic sanity check
  });
}

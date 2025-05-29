library;

// ignore: unused_import
import 'package:prime/prime.dart';

extension IntPrime on int {
  /// Convert `input` to an [int] if possible, otherwise return `defaultValue`.
  static int parseOrDefault(dynamic input, {int defaultValue = 0}) {
    return parseOrNull(input) ?? defaultValue;
  }

  /// Convert `input` to an [int] if possible, otherwise return `null`.
  static int? parseOrNull(dynamic input) {
    if (input == null) {
      return null;
    }

    if (input is bool) {
      return input ? 1 : 0;
    }

    if (input is int) {
      return input;
    }

    if (input is double) {
      return input.toInt();
    }

    if (input is String) {
      return double.tryParse(input.trim())?.toInt();
    }

    return null;
  }

  /// A [String] formatted as `this singular` or `this multiple` depending on
  /// whether `this` is 1 or not.
  String pluralize(String singular, String multiple) {
    return (this == 1) ? '$this $singular' : '$this $multiple';
  }
}

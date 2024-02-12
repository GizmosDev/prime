library prime;

// ignore: unused_import
import 'package:prime/prime.dart';

extension DoublePrime on double {
  /// Convert `input` to a [double] if possible, otherwise return `defaultValue`.
  static double parseOrDefault(dynamic input, {double defaultValue = 0}) {
    return parseOrNull(input) ?? defaultValue;
  }

  /// Convert `input` to a [double] if possible, otherwise return `null`.
  static double? parseOrNull(dynamic input) {
    if (input == null) {
      return null;
    }

    if (input is bool) {
      return input ? 1 : 0;
    }

    if (input is double) {
      return input;
    }

    if (input is int) {
      return input.toDouble();
    }

    if (input is String) {
      return double.tryParse(input.trim());
    }

    return null;
  }

  /// A [String] formatted as `this singular` or `this multiple` depending on
  /// whether `this` is 1.0 or not.
  /// Set `decimals` to use a fixed number of decimal places.
  String pluralize(String singular, String multiple, {int decimals = 2}) {
    final truncated = toStringAsFixed(decimals >= 0 ? decimals : 0);
    final fixed = double.parse(truncated);

    return (fixed == 1.0) ? '$truncated $singular' : '$truncated $multiple';
  }
}

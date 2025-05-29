library;

// ignore: unused_import
import 'package:prime/prime.dart';

extension BoolPrime on bool {
  /// Convert `input` to a [bool] if possible, otherwise return `defaultValue`.
  static bool parseOrDefault(dynamic input, {bool defaultValue = false}) {
    return parseOrNull(input) ?? defaultValue;
  }

  /// Convert `input` to a [bool] if possible, otherwise return `null`.
  static bool? parseOrNull(dynamic input) {
    if (input == null) {
      return null;
    }

    if (input is bool) {
      return input;
    }

    if (input is int) {
      return input != 0;
    }

    if (input is String) {
      if (['f', 'false', '0'].contains(input.trim().toLowerCase())) {
        return false;
      }

      if (['t', 'true', '1'].contains(input.trim().toLowerCase())) {
        return true;
      }
    }

    return null;
  }

  /// Return an [int] representation of `this` [bool].
  /// i.e.: 1 for `true`, 0 for `false`.
  int asInt() {
    return this ? 1 : 0;
  }
}

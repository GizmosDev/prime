library;

import 'package:intl/intl.dart';

// ignore: unused_import
import 'package:prime/prime.dart';

extension DateTimePrime on DateTime {
  /// A constant that represents a long time ago.
  static DateTime get distantPast => DateTime.utc(0);

  /// A constant that represents a long time in the future.
  static DateTime get distantFuture => DateTime.utc(999999);

  /// A constant that represents the epoch.
  static DateTime get epoch => DateTime.fromMicrosecondsSinceEpoch(0, isUtc: true);

  /// Convert `input` to a [DateTime] if possible, otherwise return `defaultValue`.
  static DateTime parseOrDefault(dynamic input, {required DateTime defaultValue}) {
    return DateTimePrime.parseOrNull(input) ?? defaultValue;
  }

  /// Convert `input` to a [DateTime] if possible, otherwise return `null`.
  static DateTime? parseOrNull(dynamic input) {
    if (input == null) {
      return null;
    }

    if (input is DateTime) {
      return input;
    }

    if (input is String) {
      return DateTime.tryParse(input);
    }

    return null;
  }

  /// The number of milliseconds from `now()`.
  int millisecondsSinceNow() {
    return DateTime.now().millisecondsSinceEpoch - millisecondsSinceEpoch;
  }

  /// The number of seconds from `now()`.
  int secondsSinceNow() {
    return (millisecondsSinceNow() / 1000).round();
  }

  /// `this` [DateTime] as a [String] in a short, convenient format. Set
  /// `includeTime` to `false` to omit the time portion.
  String short({bool includeTime = true}) {
    DateFormat formatter = DateFormat(includeTime ? 'yy-MM-dd HH:mm' : 'yy-MM-dd');
    return formatter.format(this);
  }
}

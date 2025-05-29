library;

import 'dart:math';

// ignore: unused_import
import 'package:prime/prime.dart';

extension NumPrime on num {
  /// Return the highest value of `this` or `other`.
  num highest(num other) => max(this, other);

  /// Return the lowest value of `this` or `other`.
  num lowest(num other) => min(this, other);

  /// Check if `this` [num] is between the two specified values. Set the
  /// optional `inclusive` parameter to `false` to exclude the two values
  /// themselves.
  bool isBetween(num first, num second, {bool inclusive = true}) {
    final lhs = first.lowest(second);
    final rhs = first.highest(second);

    return inclusive ? (this >= lhs && this <= rhs) : (this > lhs && this < rhs);
  }
}

library prime;

// ignore: unused_import
import 'package:prime/prime.dart';

extension IntPrime on int {
  /// A [String] formatted as `this singular` or `this multiple` depending on
  /// whether `this` is 1 or not.
  String pluralize(String singular, String multiple) {
    return (this == 1) ? '$this $singular' : '$this $multiple';
  }
}

library prime;

// ignore: unused_import
import 'package:prime/prime.dart';

extension DoublePrime on double {
  /// A [String] formatted as `this singular` or `this multiple` depending on
  /// whether `this` is 1.0 or not.
  /// Set `decimals` to use a fixed number of decimal places.
  String pluralize(String singular, String multiple, {int decimals = 2}) {
    final truncated = toStringAsFixed(decimals >= 0 ? decimals : 0);
    final fixed = double.parse(truncated);

    return (fixed == 1.0) ? '$truncated $singular' : '$truncated $multiple';
  }
}

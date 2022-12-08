// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('DurationPrime Tests', () {
    setUp(() {});

    test('DurationPrime.constants', () {
      expect(DurationPrime.secondsPerMonth, 60 * 60 * 24 * 30);
      expect(DurationPrime.secondsPerYear, 60 * 60 * 24 * 365);
    });

    test('DurationPrime.readable()', () {
      Duration d1 = Duration.zero;
      expect(d1.readable(), 'Just now');

      d1 = Duration(hours: 3, minutes: 4, seconds: 5);
      expect(d1.readable(), '3 hours, 4 minutes');

      d1 = Duration(hours: 3, minutes: 0, seconds: 5);
      expect(d1.readable(), '3 hours');

      d1 = Duration(days: 1, hours: 2, minutes: 3, seconds: 4);
      expect(d1.readable(), '1 day, 2 hours');

      d1 = Duration(days: 2, hours: 3, minutes: 4, seconds: 5);
      expect(d1.readable(), '2 days, 3 hours');

      d1 = Duration(days: 100, hours: 4, minutes: 5, seconds: 6);
      expect(d1.readable(), '3 months, 10 days');

      d1 = Duration(days: 900, hours: 3, minutes: 4, seconds: 5);
      expect(d1.readable(), '2 years, 5 months');

      d1 = Duration(days: 366, hours: 0, minutes: 0, seconds: 0);
      expect(d1.readable(), '1 year, 1 day');

      d1 = Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
      expect(d1.readable(), '1 year');

      // Negative
      d1 = Duration(days: -1, hours: -2, minutes: -3, seconds: -4);
      expect(d1.readable(), '1 day, 2 hours');
    });
  });
}

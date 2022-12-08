// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('DateTimePrime Tests', () {
    setUp(() {});

    test('DateTimePrime constants', () {
      expect(DateTimePrime.epoch == DateTimePrime.epoch, true);
      expect(DateTimePrime.epoch != DateTimePrime.epoch, false);

      final epochPlus1Min = DateTimePrime.epoch.add(Duration(seconds: 60));
      final epochAgain = epochPlus1Min.add(Duration(seconds: -60));
      expect(DateTimePrime.epoch == epochAgain, true);
    });

    test('DateTimePrime.parseOrDefault() Tests', () {
      DateTime now = DateTime.now();
      DateTime sampleDate = DateTime(2020, 1, 2, 3, 4, 5); // 2020-01-02 03:04:05

      expect(DateTimePrime.parseOrDefault(false, defaultValue: DateTimePrime.epoch), DateTimePrime.epoch);

      expect(DateTimePrime.parseOrDefault(false, defaultValue: DateTimePrime.epoch), DateTimePrime.epoch);
      expect(DateTimePrime.parseOrDefault(true, defaultValue: DateTimePrime.epoch), DateTimePrime.epoch);
      expect(DateTimePrime.parseOrDefault(1, defaultValue: DateTimePrime.epoch), DateTimePrime.epoch);
      expect(DateTimePrime.parseOrDefault(0, defaultValue: DateTimePrime.epoch), DateTimePrime.epoch);
      expect(DateTimePrime.parseOrDefault(-1, defaultValue: DateTimePrime.epoch), DateTimePrime.epoch);
      expect(DateTimePrime.parseOrDefault(null, defaultValue: DateTimePrime.epoch), DateTimePrime.epoch);
      expect(DateTimePrime.parseOrDefault(sampleDate, defaultValue: DateTimePrime.epoch), sampleDate);
      expect(DateTimePrime.parseOrDefault(now, defaultValue: DateTimePrime.epoch), now);
      expect(DateTimePrime.parseOrDefault('2020-01-02 03:04:05', defaultValue: DateTimePrime.epoch), sampleDate);
      expect(DateTimePrime.parseOrDefault(sampleDate.toIso8601String(), defaultValue: DateTimePrime.epoch), sampleDate);
    });

    test('DateTimePrime.parseOrNull() Tests', () {
      DateTime now = DateTime.now();
      DateTime sampleDate = DateTime(2020, 1, 2, 3, 4, 5); // 2020-01-02 03:04:05

      expect(DateTimePrime.parseOrNull(false), null);
      expect(DateTimePrime.parseOrNull(true), null);
      expect(DateTimePrime.parseOrNull(1), null);
      expect(DateTimePrime.parseOrNull(0), null);
      expect(DateTimePrime.parseOrNull(-1), null);
      expect(DateTimePrime.parseOrNull(null), null);
      expect(DateTimePrime.parseOrNull(sampleDate), sampleDate);
      expect(DateTimePrime.parseOrNull(now), now);
      expect(DateTimePrime.parseOrNull('2020-01-02 03:04:05'), sampleDate);
      expect(DateTimePrime.parseOrNull(sampleDate.toIso8601String()), sampleDate);
    });

    test('DateTimePrime.millisecondsSinceNow() Tests', () {
      expect(DateTime.now().millisecondsSinceNow() < 100, true);
    });

    test('DateTimePrime.secondsSinceNow() Tests', () {
      expect(DateTime.now().secondsSinceNow() < 1, true);
    });

    test('DateTimePrime.short() Tests', () {
      expect(DateTimePrime.epoch.short(), '70-01-01 00:00');
      expect(DateTimePrime.epoch.short(includeTime: true), '70-01-01 00:00');
      expect(DateTimePrime.epoch.short(includeTime: false), '70-01-01');
    });
  });
}

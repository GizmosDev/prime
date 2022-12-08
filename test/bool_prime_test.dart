// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('BoolPrime Tests', () {
    setUp(() {});

    test('BoolPrime.parseOrDefault() Tests', () {
      expect(BoolPrime.parseOrDefault(false, defaultValue: true), false);
      expect(BoolPrime.parseOrDefault(true, defaultValue: false), true);
      expect(BoolPrime.parseOrDefault(1, defaultValue: false), true);
      expect(BoolPrime.parseOrDefault(0, defaultValue: true), false);
      expect(BoolPrime.parseOrDefault('true', defaultValue: false), true);
      expect(BoolPrime.parseOrDefault('false', defaultValue: true), false);
      expect(BoolPrime.parseOrDefault('t', defaultValue: false), true);
      expect(BoolPrime.parseOrDefault('f', defaultValue: true), false);
      expect(BoolPrime.parseOrDefault('1', defaultValue: false), true);
      expect(BoolPrime.parseOrDefault('0', defaultValue: true), false);

      expect(BoolPrime.parseOrDefault('', defaultValue: false), false);
    });

    test('BoolPrime.parseOrNull() Tests', () {
      expect(BoolPrime.parseOrNull(false), false);
      expect(BoolPrime.parseOrNull(true), true);
      expect(BoolPrime.parseOrNull(1), true);
      expect(BoolPrime.parseOrNull(0), false);
      expect(BoolPrime.parseOrNull('true'), true);
      expect(BoolPrime.parseOrNull('false'), false);
      expect(BoolPrime.parseOrNull('t'), true);
      expect(BoolPrime.parseOrNull('f'), false);
      expect(BoolPrime.parseOrNull('1'), true);
      expect(BoolPrime.parseOrNull('0'), false);

      expect(BoolPrime.parseOrNull(''), null);
      expect(BoolPrime.parseOrNull(DateTime.now()), null);
    });

    test('BoolPrime.asInt() Tests', () {
      expect(false.asInt(), 0);
      expect(true.asInt(), 1);
    });
  });
}

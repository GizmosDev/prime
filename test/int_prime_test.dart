// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('IntPrime Tests', () {
    setUp(() {});

    test('IntPrime.parseOrNull()', () {
      expect(IntPrime.parseOrNull(null), null);

      expect(IntPrime.parseOrNull(-1), -1);
      expect(IntPrime.parseOrNull(0), 0);
      expect(IntPrime.parseOrNull(1), 1);

      expect(IntPrime.parseOrNull(-1.9), -1);
      expect(IntPrime.parseOrNull(-0.9), 0);
      expect(IntPrime.parseOrNull(-0.1), 0);
      expect(IntPrime.parseOrNull(-0.0), 0);
      expect(IntPrime.parseOrNull(0.0), 0);
      expect(IntPrime.parseOrNull(0.1), 0);
      expect(IntPrime.parseOrNull(0.9), 0);
      expect(IntPrime.parseOrNull(1.9), 1);

      expect(IntPrime.parseOrNull('-1.9'), -1);
      expect(IntPrime.parseOrNull('-0.9'), 0);
      expect(IntPrime.parseOrNull('-0.1'), 0);
      expect(IntPrime.parseOrNull('-0.0'), 0);
      expect(IntPrime.parseOrNull('0.0'), 0);
      expect(IntPrime.parseOrNull('0.1'), 0);
      expect(IntPrime.parseOrNull('0.9'), 0);
      expect(IntPrime.parseOrNull('1.9'), 1);

      expect(IntPrime.parseOrNull('null'), null);
      expect(IntPrime.parseOrNull('zero'), null);
      expect(IntPrime.parseOrNull('one'), null);
      expect(IntPrime.parseOrNull('dave'), null);
      expect(IntPrime.parseOrNull(''), null);
      expect(IntPrime.parseOrNull(' '), null);
      expect(IntPrime.parseOrNull('\t'), null);
      expect(IntPrime.parseOrNull('\n'), null);
      expect(IntPrime.parseOrNull('\r\n'), null);
      expect(IntPrime.parseOrNull('hello world.'), null);
      expect(IntPrime.parseOrNull('0x01'), null);
    });

    test('IntPrime.parseOrDefault()', () {
      expect(IntPrime.parseOrDefault(null, defaultValue: 99), 99);

      expect(IntPrime.parseOrDefault(-1, defaultValue: 99), -1);
      expect(IntPrime.parseOrDefault(0, defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault(1, defaultValue: 99), 1);

      expect(IntPrime.parseOrDefault(-1.9, defaultValue: 99), -1);
      expect(IntPrime.parseOrDefault(-0.9, defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault(-0.1, defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault(-0.0, defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault(0.0, defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault(0.1, defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault(0.9, defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault(1.9, defaultValue: 99), 1);

      expect(IntPrime.parseOrDefault('-1.9', defaultValue: 99), -1);
      expect(IntPrime.parseOrDefault('-0.9', defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault('-0.1', defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault('-0.0', defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault('0.0', defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault('0.1', defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault('0.9', defaultValue: 99), 0);
      expect(IntPrime.parseOrDefault('1.9', defaultValue: 99), 1);

      expect(IntPrime.parseOrDefault('null', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('zero', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('one', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('dave', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault(' ', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('\t', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('\n', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('\r\n', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('hello world.', defaultValue: 99), 99);
      expect(IntPrime.parseOrDefault('0x01', defaultValue: 99), 99);

      expect(IntPrime.parseOrDefault(null), 0);
      expect(IntPrime.parseOrDefault('null'), 0);
      expect(IntPrime.parseOrDefault(1), 1);
      expect(IntPrime.parseOrDefault(1.9), 1);
    });

    test('IntPrime.pluralize()', () {
      expect(0.pluralize('thing', 'things'), '0 things');
      expect(1.pluralize('thing', 'things'), '1 thing');
      expect(2.pluralize('thing', 'things'), '2 things');
      expect(10.pluralize('thing', 'things'), '10 things');
      expect(100.pluralize('thing', 'things'), '100 things');
      expect((-0).pluralize('thing', 'things'), '0 things');
      expect((-1).pluralize('thing', 'things'), '-1 things');
      expect((-2).pluralize('thing', 'things'), '-2 things');
    });
  });
}

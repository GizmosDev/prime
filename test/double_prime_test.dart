// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('DoublePrime Tests', () {
    setUp(() {});

    test('DoublePrime.parseOrNull()', () {
      expect(DoublePrime.parseOrNull(null), null);

      expect(DoublePrime.parseOrNull(-1), -1);
      expect(DoublePrime.parseOrNull(0), 0);
      expect(DoublePrime.parseOrNull(1), 1);

      expect(DoublePrime.parseOrNull(-1.9), -1.9);
      expect(DoublePrime.parseOrNull(-0.9), -0.9);
      expect(DoublePrime.parseOrNull(-0.1), -0.1);
      expect(DoublePrime.parseOrNull(-0.0), 0);
      expect(DoublePrime.parseOrNull(0.0), 0);
      expect(DoublePrime.parseOrNull(0.1), 0.1);
      expect(DoublePrime.parseOrNull(0.9), 0.9);
      expect(DoublePrime.parseOrNull(1.9), 1.9);

      expect(DoublePrime.parseOrNull('-1.9'), -1.9);
      expect(DoublePrime.parseOrNull('-0.9'), -0.9);
      expect(DoublePrime.parseOrNull('-0.1'), -0.1);
      expect(DoublePrime.parseOrNull('-0.0'), 0);
      expect(DoublePrime.parseOrNull('0.0'), 0);
      expect(DoublePrime.parseOrNull('0.1'), 0.1);
      expect(DoublePrime.parseOrNull('0.9'), 0.9);
      expect(DoublePrime.parseOrNull('1.9'), 1.9);

      expect(DoublePrime.parseOrNull('null'), null);
      expect(DoublePrime.parseOrNull('zero'), null);
      expect(DoublePrime.parseOrNull('one'), null);
      expect(DoublePrime.parseOrNull('dave'), null);
      expect(DoublePrime.parseOrNull(''), null);
      expect(DoublePrime.parseOrNull(' '), null);
      expect(DoublePrime.parseOrNull('\t'), null);
      expect(DoublePrime.parseOrNull('\n'), null);
      expect(DoublePrime.parseOrNull('\r\n'), null);
      expect(DoublePrime.parseOrNull('hello world.'), null);
      expect(DoublePrime.parseOrNull('0x01'), null);
    });

    test('DoublePrime.parseOrDefault()', () {
      expect(DoublePrime.parseOrDefault(null, defaultValue: 99), 99);

      expect(DoublePrime.parseOrDefault(-1, defaultValue: 99), -1);
      expect(DoublePrime.parseOrDefault(0, defaultValue: 99), 0);
      expect(DoublePrime.parseOrDefault(1, defaultValue: 99), 1);

      expect(DoublePrime.parseOrDefault(-1.9, defaultValue: 99), -1.9);
      expect(DoublePrime.parseOrDefault(-0.9, defaultValue: 99), -0.9);
      expect(DoublePrime.parseOrDefault(-0.1, defaultValue: 99), -0.1);
      expect(DoublePrime.parseOrDefault(-0.0, defaultValue: 99), 0);
      expect(DoublePrime.parseOrDefault(0.0, defaultValue: 99), 0);
      expect(DoublePrime.parseOrDefault(0.1, defaultValue: 99), 0.1);
      expect(DoublePrime.parseOrDefault(0.9, defaultValue: 99), 0.9);
      expect(DoublePrime.parseOrDefault(1.9, defaultValue: 99), 1.9);

      expect(DoublePrime.parseOrDefault('-1.9', defaultValue: 99), -1.9);
      expect(DoublePrime.parseOrDefault('-0.9', defaultValue: 99), -0.9);
      expect(DoublePrime.parseOrDefault('-0.1', defaultValue: 99), -0.1);
      expect(DoublePrime.parseOrDefault('-0.0', defaultValue: 99), 0);
      expect(DoublePrime.parseOrDefault('0.0', defaultValue: 99), 0);
      expect(DoublePrime.parseOrDefault('0.1', defaultValue: 99), 0.1);
      expect(DoublePrime.parseOrDefault('0.9', defaultValue: 99), 0.9);
      expect(DoublePrime.parseOrDefault('1.9', defaultValue: 99), 1.9);

      expect(DoublePrime.parseOrDefault('null', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('zero', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('one', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('dave', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault(' ', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('\t', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('\n', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('\r\n', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('hello world.', defaultValue: 99), 99);
      expect(DoublePrime.parseOrDefault('0x01', defaultValue: 99), 99);

      expect(DoublePrime.parseOrDefault(null), 0);
      expect(DoublePrime.parseOrDefault('null'), 0);
      expect(DoublePrime.parseOrDefault(1), 1);
      expect(DoublePrime.parseOrDefault(1.9), 1.9);
    });

    test('DoublePrime.pluralize()', () {
      expect((0.0).pluralize('thing', 'things'), '0.00 things');
      expect((1.0).pluralize('thing', 'things'), '1.00 thing');
      expect((2.0).pluralize('thing', 'things'), '2.00 things');
      expect((10.0).pluralize('thing', 'things'), '10.00 things');
      expect((100.0).pluralize('thing', 'things'), '100.00 things');
      expect((-0.0).pluralize('thing', 'things'), '-0.00 things');
      expect((-1.0).pluralize('thing', 'things'), '-1.00 things');
      expect((-2.0).pluralize('thing', 'things'), '-2.00 things');

      expect((0.5).pluralize('thing', 'things', decimals: 3), '0.500 things');
      expect((1.0).pluralize('thing', 'things', decimals: 3), '1.000 thing');
      expect((1.5).pluralize('thing', 'things', decimals: 3), '1.500 things');
      expect((2.5).pluralize('thing', 'things', decimals: 3), '2.500 things');
      expect((10.5).pluralize('thing', 'things', decimals: 3), '10.500 things');
      expect((100.5).pluralize('thing', 'things', decimals: 3), '100.500 things');
      expect((-0.5).pluralize('thing', 'things', decimals: 3), '-0.500 things');
      expect((-1.5).pluralize('thing', 'things', decimals: 3), '-1.500 things');
      expect((-2.5).pluralize('thing', 'things', decimals: 3), '-2.500 things');

      expect((0.5).pluralize('thing', 'things', decimals: 0), '1 thing');
      expect((1.0).pluralize('thing', 'things', decimals: 0), '1 thing');
      expect((1.5).pluralize('thing', 'things', decimals: 0), '2 things');
      expect((2.5).pluralize('thing', 'things', decimals: 0), '3 things');
      expect((10.5).pluralize('thing', 'things', decimals: 0), '11 things');
      expect((100.5).pluralize('thing', 'things', decimals: 0), '101 things');
      expect((-0.5).pluralize('thing', 'things', decimals: 0), '-1 things');
      expect((-1.5).pluralize('thing', 'things', decimals: 0), '-2 things');
      expect((-2.5).pluralize('thing', 'things', decimals: 0), '-3 things');

      expect((0.5).pluralize('thing', 'things', decimals: -1), '1 thing');
      expect((1.0).pluralize('thing', 'things', decimals: -1), '1 thing');
      expect((1.5).pluralize('thing', 'things', decimals: -1), '2 things');
      expect((2.5).pluralize('thing', 'things', decimals: -1), '3 things');
      expect((10.5).pluralize('thing', 'things', decimals: -1), '11 things');
      expect((100.5).pluralize('thing', 'things', decimals: -1), '101 things');
      expect((-0.5).pluralize('thing', 'things', decimals: -1), '-1 things');
      expect((-1.5).pluralize('thing', 'things', decimals: -1), '-2 things');
      expect((-2.5).pluralize('thing', 'things', decimals: -1), '-3 things');
    });
  });
}

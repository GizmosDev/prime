// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('DoublePrime Tests', () {
    setUp(() {});

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

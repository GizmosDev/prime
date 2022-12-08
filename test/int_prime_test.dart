// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('IntPrime Tests', () {
    setUp(() {});

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

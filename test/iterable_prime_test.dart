// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('IterablePrime Tests', () {
    setUp(() {});

    test('IterablePrime.firstOrNull() Tests', () {
      final numbers = [10, 20, 30];

      expect(numbers.firstOrNull, 10);
      expect(numbers.firstOrNull, 10);

      expect([].firstOrNull, null);
    });
    test('IterablePrime.lastOrNull() Tests', () {
      final numbers = [10, 20, 30];

      expect(numbers.lastOrNull, 30);
      expect(numbers.lastOrNull, 30);

      expect([].lastOrNull, null);
    });
  });
}

// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('ListPrime Tests', () {
    setUp(() {});

    test('ListPrime.uniqueList() Tests', () {
      final numbers = [10, 20, 30, 30, 20, 10];

      expect(numbers.uniqueList, [10, 20, 30]);
      expect([10, 10, 20, 10, 30].uniqueList, [10, 20, 30]);
      expect([20, 10, 10, 20, 10, 30].uniqueList, [20, 10, 30]);
      expect([10].uniqueList, [10]);
      expect([].uniqueList, []);
      expect([1, 1, 1, 1, 1, 1, 1].uniqueList, [1]);
    });
  });
}

import 'dart:math' as math;

// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:prime/src/extensions/num.dart';
import 'package:test/test.dart';

void main() {
  group('NumPrime Tests', () {
    setUp(() {});

    test('NumPrime.highest()', () {
      expect(1.highest(2), 2);
      expect(2.highest(2), 2);
      expect(3.highest(2), 3);
      expect((-1).highest(2), 2);
      expect(2.highest(-1), 2);
      expect(1.0.highest(2.0), 2.0);
      expect(1.1.highest(2.1), 2.1);
      expect(2.1.highest(1.1), 2.1);
      expect((-2.1).highest(-1.1), -1.1);

      expect((-2.0).highest(-2.0), -2.0);
      expect(double.minPositive.highest(double.maxFinite), double.maxFinite);
      expect(double.infinity.highest(double.infinity), double.infinity);
      expect((-double.infinity).highest(double.infinity), double.infinity);
      expect((-math.pi).highest(math.pi), math.pi);
      expect(math.e.highest(math.pi), math.pi);
    });

    test('NumPrime.lowest()', () {
      expect(1.lowest(2), 1);
      expect(2.lowest(2), 2);
      expect(3.lowest(2), 2);
      expect((-1).lowest(2), -1);
      expect(2.lowest(-1), -1);
      expect(1.0.lowest(2.0), 1.0);
      expect(1.1.lowest(2.1), 1.1);
      expect(2.1.lowest(1.1), 1.1);
      expect((-2.1).lowest(-1.1), -2.1);

      expect((-2.0).lowest(-2.0), -2.0);
      expect(double.minPositive.lowest(double.maxFinite), double.minPositive);
      expect(double.infinity.lowest(double.infinity), double.infinity);
      expect((-double.infinity).lowest(double.infinity), -double.infinity);
      expect((-math.pi).lowest(math.pi), -math.pi);
      expect(math.e.lowest(math.pi), math.e);
    });

    test('NumPrime.isBetween()', () {
      expect(1.isBetween(1, 10), true);
      expect(2.isBetween(1, 10), true);
      expect(9.isBetween(1, 10), true);
      expect(10.isBetween(1, 10), true);
      expect((-1).isBetween(1, 10), false);
      expect(11.isBetween(1, 10), false);

      expect(1.isBetween(1, 10, inclusive: true), true);
      expect(2.isBetween(1, 10, inclusive: true), true);
      expect(9.isBetween(1, 10, inclusive: true), true);
      expect(10.isBetween(1, 10, inclusive: true), true);
      expect((-1).isBetween(1, 10, inclusive: true), false);
      expect(11.isBetween(1, 10, inclusive: true), false);

      expect(1.isBetween(1, 10, inclusive: false), false);
      expect(2.isBetween(1, 10, inclusive: false), true);
      expect(9.isBetween(1, 10, inclusive: false), true);
      expect(10.isBetween(1, 10, inclusive: false), false);
      expect((-1).isBetween(1, 10, inclusive: false), false);
      expect(11.isBetween(1, 10, inclusive: false), false);

      expect((1.1).isBetween(1, 10), true);
      expect((2.1).isBetween(1, 10), true);
      expect((9.1).isBetween(1, 10), true);
      expect((10.0).isBetween(1, 10), true);
      expect((10.1).isBetween(1, 10), false);
      expect((-1.1).isBetween(1, 10), false);
      expect((11.1).isBetween(1, 10), false);

      expect((1.1).isBetween(1, 10, inclusive: true), true);
      expect((2.1).isBetween(1, 10, inclusive: true), true);
      expect((9.1).isBetween(1, 10, inclusive: true), true);
      expect((10.0).isBetween(1, 10, inclusive: true), true);
      expect((10.1).isBetween(1, 10, inclusive: true), false);
      expect((-1.1).isBetween(1, 10, inclusive: true), false);
      expect((11.1).isBetween(1, 10, inclusive: true), false);

      expect((1.1).isBetween(1, 10, inclusive: false), true);
      expect((2.1).isBetween(1, 10, inclusive: false), true);
      expect((9.1).isBetween(1, 10, inclusive: false), true);
      expect((10.0).isBetween(1, 10, inclusive: false), false);
      expect((10.1).isBetween(1, 10, inclusive: false), false);
      expect((-1.1).isBetween(1, 10, inclusive: false), false);
      expect((11.1).isBetween(1, 10, inclusive: false), false);
    });
  });
}

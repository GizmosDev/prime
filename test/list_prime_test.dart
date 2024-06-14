// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

enum _ConnectionType { bluetooth, wifi, ethernet, mobile, none, vpn, other }

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

    test('ListPrime.containsAny() Tests', () {
      final connectedTypes = [
        _ConnectionType.bluetooth,
        _ConnectionType.wifi,
        _ConnectionType.ethernet,
        _ConnectionType.mobile,
        _ConnectionType.vpn,
      ];

      final offlineTypes = [
        _ConnectionType.none,
        _ConnectionType.other,
      ];

      final fastConnectionTypes = [
        _ConnectionType.wifi,
        _ConnectionType.ethernet,
        _ConnectionType.mobile,
      ];

      final List<_ConnectionType> emptyList = [];

      expect(connectedTypes.containsAny(offlineTypes), false);
      expect(fastConnectionTypes.containsAny(offlineTypes), false);
      expect(connectedTypes.containsAny(fastConnectionTypes), true);

      expect(connectedTypes.containsAny(emptyList), false);
      expect(emptyList.containsAny(offlineTypes), false);
    });
  });
}

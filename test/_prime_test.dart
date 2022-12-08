// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('Sample Test', () {
    setUp(() {});

    test('GizmosDevPrime Tests', () {
      expect(GizmosDevPrime().website.toString(), 'https://gizmos.dev/');
    });
  });
}

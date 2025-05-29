library;

import 'dart:collection';

// ignore: unused_import
import 'package:prime/prime.dart';

extension ListPrime<E> on List<E> {
  /// A `[List]<E>` containing the unique items from `this`.
  /// i.e.: If `this` has any duplicate items, only one will be in the
  /// `uniqueList`
  List<E> get uniqueList {
    return LinkedHashSet<E>.from(this).toList();
  }

  /// Returns `true` if `this` contains any of the elements in `other`.
  bool containsAny(List<E> other) {
    for (final element in other) {
      if (contains(element)) {
        return true;
      }
    }

    return false;
  }
}

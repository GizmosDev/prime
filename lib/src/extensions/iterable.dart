library prime;

// ignore: unused_import
import 'package:prime/prime.dart';

extension IterablePrime<E> on Iterable<E> {
  /// The first item in `this` [Iterable] collection if there is one, `null`
  /// otherwise.
  E? get firstOrNull {
    Iterator<E> it = iterator;
    if (!it.moveNext()) {
      return null;
    }

    return it.current;
  }

  /// The last item in `this` [Iterable] collection if there is one, `null`
  /// otherwise.
  E? get lastOrNull {
    Iterator<E> it = iterator;
    if (!it.moveNext()) {
      return null;
    }

    E? result;
    do {
      result = it.current;
    } while (it.moveNext());

    return result;
  }
}

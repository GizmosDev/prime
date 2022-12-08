library prime;

import 'dart:io';
import 'dart:math';

// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:characters/characters.dart';

extension StringPrime on String {
  /// A convenience constant that list contains each lower case letter.
  static String lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';

  /// The prefix of this [String].
  ///
  /// Returns a [String] that consists of just the first `length` chars of this
  /// [String].
  ///
  /// If the `useCharacters` parameter is set to `true`, the characters package
  /// will be used to work on the string, which treats Unicode (i.e: emoji) as a
  /// human would expect. 1️⃣ is treated as 1 character instead of 3 if
  /// `useCharacters` is set to `false`. Defaults to `true`.
  String prefix(int length, {bool useCharacters = true}) {
    if (length <= 0) return '';

    final calculatedLength = useCharacters ? characters.length : this.length;
    if (length >= calculatedLength) {
      return this;
    }

    final reallyUseCharacters = useCharacters ? calculatedLength != this.length : false;
    return reallyUseCharacters ? characters.getRange(0, length).toString() : substring(0, length);
  }

  /// The suffix of this [String].
  ///
  /// Returns a [String] that consists of just the last `length` chars of this
  /// [String].
  ///
  /// If the `useCharacters` parameter is set to `true`, the characters package
  /// will be used to work on the string, which treats Unicode (i.e: emoji) as a
  /// human would expect. 1️⃣ is treated as 1 character instead of 3 if
  /// `useCharacters` is set to `false`. Defaults to `true`.
  String suffix(int length, {bool useCharacters = true}) {
    if (length <= 0) return '';

    final calculatedLength = useCharacters ? characters.length : this.length;
    if (length >= calculatedLength) {
      return this;
    }

    final reallyUseCharacters = useCharacters ? calculatedLength != this.length : false;
    if (reallyUseCharacters) {
      return characters.getRange(calculatedLength - length).toString();
    } else {
      return substring(this.length - length);
    }
  }

  /// Return the longest string that's common to the start of both `this` and
  /// `other` [String]'s
  String commonPrefix(String other, {bool useCharacters = true}) {
    final shortestStringLength = min(useCharacters ? characters.length : length, useCharacters ? other.characters.length : other.length);
    var matchingPrefix = '';
    var thisPrefix = '';
    var otherPrefix = '';

    for (var index = 1; index <= shortestStringLength; ++index) {
      thisPrefix = prefix(index, useCharacters: useCharacters);
      otherPrefix = other.prefix(index, useCharacters: useCharacters);

      if (thisPrefix == otherPrefix) {
        matchingPrefix = thisPrefix;
      } else {
        return matchingPrefix;
      }
    }

    return matchingPrefix;
  }

  /// Return the longest string that's common to the end of both `this` and
  /// `other` [String]'s
  String commonSuffix(String other, {bool useCharacters = true}) {
    final shortestStringLength = min(useCharacters ? characters.length : length, useCharacters ? other.characters.length : other.length);
    var matchingSuffix = '';
    var thisSuffix = '';
    var otherSuffix = '';

    for (var index = 1; index <= shortestStringLength; ++index) {
      thisSuffix = suffix(index, useCharacters: useCharacters);
      otherSuffix = other.suffix(index, useCharacters: useCharacters);

      if (thisSuffix == otherSuffix) {
        matchingSuffix = thisSuffix;
      } else {
        return matchingSuffix;
      }
    }

    return matchingSuffix;
  }

  /// This [String] repeated `count` times.
  ///
  /// Returns a [String] that is `this` [String] repeated with no joining
  /// characters.
  String repeat(int count) {
    if (length < 1 || count < 1) {
      return '';
    }

    if (count == 1) {
      return this;
    }

    var result = '';
    for (int i = 0; i < count; ++i) {
      result += this;
    }

    return result;
  }

  /// An obscurred version of `this` [String].
  ///
  /// `maxLength` is the maximun number of characters that should be returned,
  /// excluding the length of the `hiddenyBy` string that obscures the middle of
  /// the string. i.e. a string of `1234567890` with a `maxLength` of 6, and a
  /// a `hiddenBy` value of `...` will return `123...890`.
  ///
  /// `hiddenBy` is a string to use to obscure the middle of `this` string.
  ///
  /// Returns an obscurred version of the `this` string that hides at least half
  /// (or 4 characters) of the original value. If the provided parameters do not
  /// obscure enough of `this`, only the `hiddenBy` string will be returned.
  String snipped(int maxLength, {String hiddenBy = '...', bool useCharacters = true}) {
    int halfMaxLength = (maxLength / 2).floor();
    final calculatedLength = useCharacters ? characters.length : length;
    if (halfMaxLength < 1 || calculatedLength - (halfMaxLength * 2) < 3) {
      return hiddenBy;
    }

    return prefix(halfMaxLength, useCharacters: useCharacters) + hiddenBy + suffix(halfMaxLength, useCharacters: useCharacters);
  }

  /// A [String] with all occurrances of `search` removed from the front.
  ///
  /// `search` is a basic string, not a regex search.
  String trimPrefix(String search) {
    if (isEmpty || search.isEmpty || search.length > length) {
      return this;
    }

    var trimmed = this;
    while (trimmed.startsWith(search)) {
      trimmed = trimmed.substring(search.length);
    }
    return trimmed;
  }

  /// A [String] with all occurrances of `search` removed from the back.
  ///
  /// `search` is a basic string, not a regex search.
  String trimSuffix(String search) {
    if (isEmpty || search.isEmpty || search.length > length) {
      return this;
    }

    var trimmed = this;
    while (trimmed.endsWith(search)) {
      trimmed = trimmed.substring(0, trimmed.length - search.length);
    }

    return trimmed;
  }

  /// A [String] with all occurrances of `search` removed from the ends.
  ///
  /// `search` is a basic string, not a regex search.
  String trimEnds(String search) {
    return trimPrefix(search).trimSuffix(search);
  }

  /// A [String] with each word (any group of letters), starting with a capital
  /// letter, followed by all lower case letters.
  String toTitleCase() {
    var composed = '';

    var inWord = false;
    for (final character in characters) {
      final currentCharacter = character.toLowerCase();
      if (StringPrime.lowerCaseChars.contains(currentCharacter)) {
        if (inWord) {
          composed += currentCharacter;
        } else {
          composed += character.toUpperCase();
          inWord = true;
        }
      } else {
        composed += character;
        inWord = false;
      }
    }

    return composed;
  }

  /// Checks if `this` [String] is a valid IPv4 address.
  bool isIPv4Address() {
    try {
      final address = InternetAddress(this, type: InternetAddressType.IPv4);
      return address.type == InternetAddressType.IPv4;
    } catch (e) {
      return false;
    }
  }

  /// Checks if `this` [String] is a valid IPv6 address.
  bool isIPv6Address() {
    try {
      final address = InternetAddress(this, type: InternetAddressType.IPv6);
      return address.type == InternetAddressType.IPv6;
    } catch (e) {
      return false;
    }
  }

  /// If `this` [String] is a valid IPv6 address, return the fully expanded
  /// string representation.
  String? expandedIPv6Address() {
    try {
      final address = InternetAddress(this, type: InternetAddressType.IPv6);
      if (address.type != InternetAddressType.IPv6) return null;

      final parts = List<String>.empty(growable: true);
      final rawAddress = address.rawAddress;
      for (int i = 0; i < 8; ++i) {
        final first = rawAddress[i * 2];
        final second = rawAddress[i * 2 + 1];
        parts.add('${first.toRadixString(16).padLeft(2, '0')}${second.toRadixString(16).padLeft(2, '0')}');
      }
      return parts.join(':');
    } catch (e) {
      return null;
    }
  }

  /// If `this` [String] is a valid IPv6 address, return the fully expanded
  /// string representation.
  String? shortenedIPv6Address() {
    const numberOfQuartets = 8;
    try {
      final address = InternetAddress(this, type: InternetAddressType.IPv6);
      if (address.type != InternetAddressType.IPv6) return null;

      final parts = List<String>.empty(growable: true);
      int highestZerosInARow = 0;
      int zerosInARow = 0;
      int position = -1;

      final rawAddress = address.rawAddress;
      for (int i = 0; i < numberOfQuartets; ++i) {
        final first = rawAddress[i * 2];
        final second = rawAddress[i * 2 + 1];
        final quartet = '${first.toRadixString(16).padLeft(2, '0')}${second.toRadixString(16).padLeft(2, '0')}'.trimPrefix('0');

        if (quartet.isEmpty) {
          ++zerosInARow;
          if (zerosInARow > highestZerosInARow) {
            highestZerosInARow = zerosInARow;
            position = i;
          }
        } else {
          zerosInARow = 0;
        }

        parts.add(quartet.isEmpty ? '0' : quartet);
      }

      if (highestZerosInARow < 2) return parts.join(':');

      var composed = '';
      final positionBeforeDoubleColon = position - highestZerosInARow + 1;
      final positionAfterDoubleColon = position + 1;

      if (positionBeforeDoubleColon <= 0) {
        composed += ':';
      }
      for (int i = 0; i < positionBeforeDoubleColon; ++i) {
        composed += '${parts[i]}:';
      }
      for (int i = positionAfterDoubleColon; i < numberOfQuartets; ++i) {
        composed += ':${parts[i]}';
      }
      if (positionAfterDoubleColon >= numberOfQuartets) {
        composed += ':';
      }

      return composed;
    } catch (e) {
      return null;
    }
  }
}

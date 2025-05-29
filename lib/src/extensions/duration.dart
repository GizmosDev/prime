library;

// ignore: unused_import
import 'package:prime/prime.dart';

extension DurationPrime on Duration {
  /// A constant that represents an approximate number of seconds in a year.
  static int secondsPerYear = (Duration.secondsPerDay * 365);

  /// A constant that represents an approximate number of seconds in a month.
  static int secondsPerMonth = (Duration.secondsPerDay * 30);

  /// A human readable approximation of the length of `this` [Duration].
  /// Note: uses constant 365 days/year and 30 days/month.
  String readable() {
    final parts = List<String>.empty(growable: true);

    int secondsLeft = inSeconds.abs();

    final years = (secondsLeft / DurationPrime.secondsPerYear).floor();
    secondsLeft -= years * secondsPerYear;

    final months = (secondsLeft / DurationPrime.secondsPerMonth).floor();
    secondsLeft -= months * secondsPerMonth;

    final days = (secondsLeft / Duration.secondsPerDay).floor();
    secondsLeft -= days * Duration.secondsPerDay;

    final hours = (secondsLeft / Duration.secondsPerHour).floor();
    secondsLeft -= hours * Duration.secondsPerHour;

    final minutes = (secondsLeft / Duration.secondsPerMinute).floor();
    secondsLeft -= minutes * Duration.secondsPerMinute;

    if (years > 0) parts.add(years.pluralize('year', 'years'));
    if (months > 0) parts.add(months.pluralize('month', 'months'));
    if (parts.length < 2 && days > 0) parts.add(days.pluralize('day', 'days'));
    if (years == 0 && months == 0 && parts.length < 2 && hours > 0) parts.add(hours.pluralize('hour', 'hours'));
    if (years == 0 && months == 0 && days == 0 && parts.length < 2 && minutes > 0) parts.add(minutes.pluralize('minute', 'minutes'));

    return parts.isEmpty ? 'Just now' : parts.join(', ');
  }
}

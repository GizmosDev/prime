// ignore: unused_import
import 'package:prime/prime.dart';
import 'package:test/test.dart';

void main() {
  group('StringPrime Tests', () {
    setUp(() {});

    test('StringPrime.prefix()', () {
      expect(''.prefix(3), '');
      expect(''.prefix(2), '');
      expect(''.prefix(1), '');
      expect(''.prefix(0), '');
      expect(''.prefix(-1), '');
      expect(''.prefix(-2), '');
      expect(''.prefix(-3), '');

      expect('ab'.prefix(3), 'ab');
      expect('ab'.prefix(2), 'ab');
      expect('ab'.prefix(1), 'a');
      expect('ab'.prefix(0), '');
      expect('ab'.prefix(-1), '');
      expect('ab'.prefix(-2), '');
      expect('ab'.prefix(-3), '');

      expect('abcdef'.prefix(3), 'abc');
      expect('abcdef'.prefix(2), 'ab');
      expect('abcdef'.prefix(1), 'a');
      expect('abcdef'.prefix(0), '');
      expect('abcdef'.prefix(-1), '');
      expect('abcdef'.prefix(-2), '');
      expect('abcdef'.prefix(-3), '');

      expect('ab\n ef'.prefix(3), 'ab\n');
      expect('ab\n ef'.prefix(2), 'ab');
      expect('ab\n ef'.prefix(1), 'a');
      expect('ab\n ef'.prefix(0), '');
      expect('ab\n ef'.prefix(-1), '');
      expect('ab\n ef'.prefix(-2), '');
      expect('ab\n ef'.prefix(-3), '');

      expect('1️⃣2️⃣'.prefix(3), '1️⃣2️⃣');
      expect('1️⃣2️⃣'.prefix(2), '1️⃣2️⃣');
      expect('1️⃣2️⃣'.prefix(1), '1️⃣');
      expect('1️⃣2️⃣'.prefix(0), '');
      expect('1️⃣2️⃣'.prefix(-1), '');
      expect('1️⃣2️⃣'.prefix(-2), '');
      expect('1️⃣2️⃣'.prefix(-3), '');
    });

    test('StringPrime.suffix()', () {
      expect(''.suffix(3), '');
      expect(''.suffix(2), '');
      expect(''.suffix(1), '');
      expect(''.suffix(0), '');
      expect(''.suffix(-1), '');
      expect(''.suffix(-2), '');
      expect(''.suffix(-3), '');

      expect('ab'.suffix(3), 'ab');
      expect('ab'.suffix(2), 'ab');
      expect('ab'.suffix(1), 'b');
      expect('ab'.suffix(0), '');
      expect('ab'.suffix(-1), '');
      expect('ab'.suffix(-2), '');
      expect('ab'.suffix(-3), '');

      expect('abcdef'.suffix(3), 'def');
      expect('abcdef'.suffix(2), 'ef');
      expect('abcdef'.suffix(1), 'f');
      expect('abcdef'.suffix(0), '');
      expect('abcdef'.suffix(-1), '');
      expect('abcdef'.suffix(-2), '');
      expect('abcdef'.suffix(-3), '');

      expect('ab\n ef'.suffix(3), ' ef');
      expect('ab\n ef'.suffix(2), 'ef');
      expect('ab\n ef'.suffix(1), 'f');
      expect('ab\n ef'.suffix(0), '');
      expect('ab\n ef'.suffix(-1), '');
      expect('ab\n ef'.suffix(-2), '');
      expect('ab\n ef'.suffix(-3), '');

      expect('1️⃣2️⃣'.suffix(3), '1️⃣2️⃣');
      expect('1️⃣2️⃣'.suffix(2), '1️⃣2️⃣');
      expect('1️⃣2️⃣'.suffix(1), '2️⃣');
      expect('1️⃣2️⃣'.suffix(0), '');
      expect('1️⃣2️⃣'.suffix(-1), '');
      expect('1️⃣2️⃣'.suffix(-2), '');
      expect('1️⃣2️⃣'.suffix(-3), '');
    });

    test('StringPrime.commonPrefix()', () {
      expect('abcdef'.commonPrefix('abdefg'), 'ab');
      expect('abcdef'.commonPrefix('abcdef'), 'abcdef');
      expect('abcdef'.commonPrefix('abcdefa'), 'abcdef');
      expect('abcdeff'.commonPrefix('abcdef'), 'abcdef');
      expect(''.commonPrefix('abcdef'), '');
      expect('abcdef'.commonPrefix(''), '');
      expect(''.commonPrefix(''), '');
    });

    test('StringPrime.commonSuffix()', () {
      expect('abcdef'.commonSuffix('abceef'), 'ef');
      expect('abcdef'.commonSuffix('abcdef'), 'abcdef');
      expect('abcdef'.commonSuffix('aabcdef'), 'abcdef');
      expect('aabcdef'.commonSuffix('abcdef'), 'abcdef');
      expect(''.commonSuffix('abcdef'), '');
      expect('abcdef'.commonSuffix(''), '');
      expect(''.commonSuffix(''), '');
    });

    test('StringPrime.repeat()', () {
      expect('ab'.repeat(3), 'ababab');
      expect('ab'.repeat(2), 'abab');
      expect('ab'.repeat(1), 'ab');
      expect('ab'.repeat(0), '');
      expect('ab'.repeat(-1), '');
      expect('1️⃣2️⃣'.repeat(3), '1️⃣2️⃣1️⃣2️⃣1️⃣2️⃣');
      expect('1️⃣2️⃣'.repeat(1), '1️⃣2️⃣');
      expect('1️⃣2️⃣'.repeat(0), '');
      expect('1️⃣2️⃣'.repeat(-1), '');
      expect(''.repeat(3), '');
      expect(''.repeat(2), '');
      expect(''.repeat(1), '');
      expect(''.repeat(0), '');
      expect(''.repeat(-1), '');
    });

    test('StringPrime.snipped()', () {
      expect('123456'.snipped(4), '...');
      expect('1234567890'.snipped(4), '12...90');
      expect('1234567890'.snipped(4, hiddenBy: '{-snipped-}'), '12{-snipped-}90');
      expect('123456'.snipped(4, hiddenBy: '-'), '-');
      expect('12345678'.snipped(4, hiddenBy: '-'), '12-78');

      expect('12'.snipped(2), '...');
      expect('123'.snipped(2), '...');
      expect('1234'.snipped(2), '...');
      expect('123456'.snipped(2), '1...6');
      expect('123456'.snipped(3), '1...6');
      expect('123456'.snipped(4, hiddenBy: '.'), '.');
      expect('12345678'.snipped(4), '12...78');
      expect('12345678'.snipped(4, hiddenBy: '.'), '12.78');
      expect('12345678'.snipped(-1), '...');
      expect(''.snipped(2), '...');
      expect(''.snipped(1), '...');
      expect(''.snipped(0), '...');
      expect(''.snipped(-1), '...');

      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣7️⃣8️⃣9️⃣🔟'.snipped(4), '1️⃣2️⃣...9️⃣🔟');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣7️⃣8️⃣9️⃣🔟'.snipped(4, hiddenBy: '🔹🔹🔹'), '1️⃣2️⃣🔹🔹🔹9️⃣🔟');
    });

    test('StringPrime.trimPrefix()', () {
      expect('abcdef'.trimPrefix('a'), 'bcdef');
      expect('abcdef'.trimPrefix('b'), 'abcdef');
      expect('abcdef'.trimPrefix('ab'), 'cdef');
      expect('abcdef'.trimPrefix(''), 'abcdef');
      expect(''.trimPrefix('a'), '');
      expect(''.trimPrefix('ab'), '');
      expect(''.trimPrefix(''), '');
      expect('abcdef'.trimPrefix('f'), 'abcdef');

      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimPrefix('1️⃣'), '2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimPrefix('2️⃣'), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimPrefix('1️⃣2️⃣'), '3️⃣4️⃣5️⃣6️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimPrefix(''), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect(''.trimPrefix('1️⃣'), '');
      expect(''.trimPrefix('1️⃣2️⃣'), '');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimPrefix('6️⃣'), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
    });

    test('StringPrime.trimSuffix()', () {
      expect('abcdef'.trimSuffix('f'), 'abcde');
      expect('abcdef'.trimSuffix('e'), 'abcdef');
      expect('abcdef'.trimSuffix('ef'), 'abcd');
      expect('abcdef'.trimSuffix(''), 'abcdef');
      expect(''.trimSuffix('f'), '');
      expect(''.trimSuffix('ef'), '');
      expect(''.trimSuffix(''), '');
      expect('abcdef'.trimSuffix('a'), 'abcdef');

      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimSuffix('6️⃣'), '1️⃣2️⃣3️⃣4️⃣5️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimSuffix('5️⃣'), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimSuffix('5️⃣6️⃣'), '1️⃣2️⃣3️⃣4️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimSuffix(''), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect(''.trimSuffix('6️⃣'), '');
      expect(''.trimSuffix('5️⃣6️⃣'), '');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimSuffix('1️⃣'), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
    });

    test('StringPrime.trimEnds()', () {
      expect('abcdef'.trimEnds('a'), 'bcdef');
      expect('abcdef'.trimEnds('b'), 'abcdef');
      expect('abcdef'.trimEnds('ab'), 'cdef');
      expect('abcdef'.trimEnds(''), 'abcdef');
      expect(''.trimEnds('a'), '');
      expect(''.trimEnds('ab'), '');
      expect(''.trimEnds(''), '');

      expect('abcdef'.trimEnds('f'), 'abcde');
      expect('abcdef'.trimEnds('e'), 'abcdef');
      expect('abcdef'.trimEnds('ef'), 'abcd');
      expect('abcdef'.trimEnds(''), 'abcdef');
      expect(''.trimEnds('f'), '');
      expect(''.trimEnds('ef'), '');
      expect(''.trimEnds(''), '');

      expect('fedcbaabcdef'.trimEnds('f'), 'edcbaabcde');
      expect('fedcbaabcdef'.trimEnds('e'), 'fedcbaabcdef');
      expect('fedcbaabcdef'.trimEnds('ef'), 'fedcbaabcd');
      expect('efdcbaabcdef'.trimEnds('ef'), 'dcbaabcd');
      expect('fedcbaabcdef'.trimEnds(''), 'fedcbaabcdef');
      expect(''.trimEnds('f'), '');
      expect(''.trimEnds('ef'), '');
      expect(''.trimEnds(''), '');
      expect('fedcbaabcdef'.trimEnds('x'), 'fedcbaabcdef');

      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimEnds('1️⃣'), '2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimEnds('6️⃣'), '1️⃣2️⃣3️⃣4️⃣5️⃣');
      expect('6️⃣1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimEnds('6️⃣'), '1️⃣2️⃣3️⃣4️⃣5️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimEnds('5️⃣6️⃣'), '1️⃣2️⃣3️⃣4️⃣');
      expect('5️⃣6️⃣1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimEnds('5️⃣6️⃣'), '1️⃣2️⃣3️⃣4️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimEnds(''), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect('1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣'.trimEnds('a'), '1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣');
      expect(''.trimEnds('6️⃣'), '');
      expect(''.trimEnds('5️⃣6️⃣'), '');
    });

    test('StringPrime.toTitleCase()', () {
      expect('hello world. good night, sleep tight.'.toTitleCase(), 'Hello World. Good Night, Sleep Tight.');
      expect('HELLO WORLD. GOOD NIGHT, SLEEP TIGHT.'.toTitleCase(), 'Hello World. Good Night, Sleep Tight.');
      expect(''.toTitleCase(), '');
      expect('Hello World. Good Night, Sleep Tight.'.toTitleCase(), 'Hello World. Good Night, Sleep Tight.');
      expect('HeLlo WoRld. GooD niGht, slEep tIGHt.'.toTitleCase(), 'Hello World. Good Night, Sleep Tight.');
      expect('HeLlo 🌎. GooD niGht, slEep tIGHt. 👍'.toTitleCase(), 'Hello 🌎. Good Night, Sleep Tight. 👍');

      expect('Hello World.good Night, Sleep Tight.'.toTitleCase(), 'Hello World.Good Night, Sleep Tight.');
      expect('HeLlo WoRld.GooD niGht, slEep tIGHt.'.toTitleCase(), 'Hello World.Good Night, Sleep Tight.');
      expect('HeLlo 🌎world.GooD niGht, slEep tIGHt. 👍'.toTitleCase(), 'Hello 🌎World.Good Night, Sleep Tight. 👍');
    });

    test('StringPrime.isIPv4Address()', () {
      expect(''.isIPv4Address(), false);
      expect('0.0.0.0'.isIPv4Address(), true);
      expect('0.1.2.3'.isIPv4Address(), true);
      expect('100.101.202.203'.isIPv4Address(), true);
      expect('100.101.202.203.100'.isIPv4Address(), false);
      expect('255.255.255.255'.isIPv4Address(), true);
      expect('100.101.202.283'.isIPv4Address(), false);

      expect('100.101.283'.isIPv4Address(), false);
      expect('100.101.202.233.250'.isIPv4Address(), false);
      expect('100'.isIPv4Address(), false);
      expect('100.101'.isIPv4Address(), false);
      expect('A.B.C.D'.isIPv4Address(), false);
      expect('aa.bb.cc.dd'.isIPv4Address(), false);
      expect('A.B.C.D'.isIPv4Address(), false);

      expect('1️⃣.2️⃣.3️⃣.4️⃣'.isIPv4Address(), false);
      expect('23B3E134-6A92-4CA2-BD95-122B69A7006F'.isIPv4Address(), false);
      expect('2001:0db8:0000:0000:0000:8a2e:0370:7334'.isIPv4Address(), false);
      expect('2001:db8::8a2e:370:7334'.isIPv4Address(), false);
    });

    test('StringPrime.isIPv6Address()', () {
      expect(''.isIPv6Address(), false);

      expect('a00a:0aa0:0000:0000:0000:abcd:00db:1234'.isIPv6Address(), true);
      expect('a00a:0aa0::abcd:00db:1234'.isIPv6Address(), true);
      expect('::1234'.isIPv6Address(), true);
      expect('::1'.isIPv6Address(), true);
      expect('::0'.isIPv6Address(), true);
      expect('0::0'.isIPv6Address(), true);
      expect('1::0'.isIPv6Address(), true);
      expect('0123::0'.isIPv6Address(), true);
      expect('123::0'.isIPv6Address(), true);

      expect('0.0.0.0'.isIPv6Address(), false);
      expect('0.1.2.3'.isIPv6Address(), false);
      expect('100.101.202.203'.isIPv6Address(), false);
      expect('100.101.202.203.100'.isIPv6Address(), false);
      expect('255.255.255.255'.isIPv6Address(), false);
      expect('100.101.202.283'.isIPv6Address(), false);
      expect('100.101.283'.isIPv6Address(), false);

      expect('23B3E134-6A92-4CA2-BD95-122B69A7006F'.isIPv6Address(), false);

      expect('ffff:0aa0::abcd:00db:1234'.isIPv6Address(), true);
      expect('gggg:0aa0::abcd:00db:1234'.isIPv6Address(), false);
      expect('zzzz:0aa0::abcd:00db:1234'.isIPv6Address(), false);

      expect('0000:0000:0000:0000:0000:0000:0000:0000'.isIPv6Address(), true);
      expect('00000:0000:0000:0000:0000:0000:0000:0000'.isIPv6Address(), true);
      expect('00000:00000:00000:00000:00000:00000:00000:00000'.isIPv6Address(), true);
      expect('ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.isIPv6Address(), true);
      expect('fffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.isIPv6Address(), false);
      expect('0ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.isIPv6Address(), true);
      expect('ffff:0aa0::abcd:00db:1234'.isIPv6Address(), true);

      expect('fe80::'.isIPv6Address(), true);
      expect('fe80::%18'.isIPv6Address(), true);
      expect('fe80::%abc0134456789ab'.isIPv6Address(), true);
    });

    test('StringPrime.expandedIPv6Address()', () {
      expect(''.expandedIPv6Address(), null);

      expect('a00a:0aa0:0000:0000:0000:abcd:00db:1234'.expandedIPv6Address(), 'a00a:0aa0:0000:0000:0000:abcd:00db:1234');
      expect('a00a:0aa0::abcd:00db:1234'.expandedIPv6Address(), 'a00a:0aa0:0000:0000:0000:abcd:00db:1234');
      expect('::1234'.expandedIPv6Address(), '0000:0000:0000:0000:0000:0000:0000:1234');
      expect('::1'.expandedIPv6Address(), '0000:0000:0000:0000:0000:0000:0000:0001');
      expect('::0'.expandedIPv6Address(), '0000:0000:0000:0000:0000:0000:0000:0000');
      expect('0::0'.expandedIPv6Address(), '0000:0000:0000:0000:0000:0000:0000:0000');
      expect('1::0'.expandedIPv6Address(), '0001:0000:0000:0000:0000:0000:0000:0000');
      expect('0123::0'.expandedIPv6Address(), '0123:0000:0000:0000:0000:0000:0000:0000');
      expect('123::0'.expandedIPv6Address(), '0123:0000:0000:0000:0000:0000:0000:0000');

      expect('0.0.0.0'.expandedIPv6Address(), null);
      expect('0.1.2.3'.expandedIPv6Address(), null);
      expect('100.101.202.203'.expandedIPv6Address(), null);
      expect('100.101.202.203.100'.expandedIPv6Address(), null);
      expect('255.255.255.255'.expandedIPv6Address(), null);
      expect('100.101.202.283'.expandedIPv6Address(), null);
      expect('100.101.283'.expandedIPv6Address(), null);

      expect('23B3E134-6A92-4CA2-BD95-122B69A7006F'.expandedIPv6Address(), null);

      expect('ffff:0aa0::abcd:00db:1234'.expandedIPv6Address(), 'ffff:0aa0:0000:0000:0000:abcd:00db:1234');
      expect('gggg:0aa0::abcd:00db:1234'.expandedIPv6Address(), null);
      expect('zzzz:0aa0::abcd:00db:1234'.expandedIPv6Address(), null);

      expect('0000:0000:0000:0000:0000:0000:0000:0000'.expandedIPv6Address(), '0000:0000:0000:0000:0000:0000:0000:0000');
      expect('00000:0000:0000:0000:0000:0000:0000:0000'.expandedIPv6Address(), '0000:0000:0000:0000:0000:0000:0000:0000');
      expect('00000:00000:00000:00000:00000:00000:00000:00000'.expandedIPv6Address(), '0000:0000:0000:0000:0000:0000:0000:0000');
      expect('ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.expandedIPv6Address(), 'ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff');
      expect('fffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.expandedIPv6Address(), null);
      expect('0ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.expandedIPv6Address(), 'ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff');
      expect('ffff:0aa0::abcd:00db:1234'.expandedIPv6Address(), 'ffff:0aa0:0000:0000:0000:abcd:00db:1234');

      expect('fe80::'.expandedIPv6Address(), 'fe80:0000:0000:0000:0000:0000:0000:0000');
      expect('fe80::%18'.expandedIPv6Address(), 'fe80:0000:0000:0000:0000:0000:0000:0000');
      expect('fe80::%abc0134456789ab'.expandedIPv6Address(), 'fe80:0000:0000:0000:0000:0000:0000:0000');
    });

    test('StringPrime.shortenedIPv6Address()', () {
      expect(''.shortenedIPv6Address(), null);

      expect('a00a:0aa0:0000:0000:0000:abcd:00db:1234'.shortenedIPv6Address(), 'a00a:aa0::abcd:db:1234');
      expect('a00a:0aa0::abcd:00db:1234'.shortenedIPv6Address(), 'a00a:aa0::abcd:db:1234');
      expect('0000:0000:0000:0000:0000:0000:0000:1234'.shortenedIPv6Address(), '::1234');
      expect('::1234'.shortenedIPv6Address(), '::1234');
      expect('::1'.shortenedIPv6Address(), '::1');
      expect('0000:0000:0000:0000:0000:0000:0000:0001'.shortenedIPv6Address(), '::1');
      expect('0000:0000:0000:0000:0000:0000:0000:0000'.shortenedIPv6Address(), '::');
      expect('::0'.shortenedIPv6Address(), '::');
      expect('0::0'.shortenedIPv6Address(), '::');
      expect('0001:0000:0000:0000:0000:0000:0000:0000'.shortenedIPv6Address(), '1::');
      expect('1::0'.shortenedIPv6Address(), '1::');
      expect('0123::0'.shortenedIPv6Address(), '123::');
      expect('123::0'.shortenedIPv6Address(), '123::');

      expect('0.0.0.0'.shortenedIPv6Address(), null);
      expect('0.1.2.3'.shortenedIPv6Address(), null);
      expect('100.101.202.203'.shortenedIPv6Address(), null);
      expect('100.101.202.203.100'.shortenedIPv6Address(), null);
      expect('255.255.255.255'.shortenedIPv6Address(), null);
      expect('100.101.202.283'.shortenedIPv6Address(), null);
      expect('100.101.283'.shortenedIPv6Address(), null);

      expect('23B3E134-6A92-4CA2-BD95-122B69A7006F'.shortenedIPv6Address(), null);

      expect('ffff:0aa0::abcd:00db:1234'.shortenedIPv6Address(), 'ffff:aa0::abcd:db:1234');
      expect('gggg:0aa0::abcd:00db:1234'.shortenedIPv6Address(), null);
      expect('zzzz:0aa0::abcd:00db:1234'.shortenedIPv6Address(), null);

      expect('0000:0000:0000:0000:0000:0000:0000:0000'.shortenedIPv6Address(), '::');
      expect('00000:0000:0000:0000:0000:0000:0000:0000'.shortenedIPv6Address(), '::');
      expect('00000:00000:00000:00000:00000:00000:00000:00000'.shortenedIPv6Address(), '::');
      expect('ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.shortenedIPv6Address(), 'ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff');
      expect('fffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.shortenedIPv6Address(), null);
      expect('0ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff'.shortenedIPv6Address(), 'ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff');
      expect('ffff:0aa0::abcd:00db:1234'.shortenedIPv6Address(), 'ffff:aa0::abcd:db:1234');

      expect('fe80::'.shortenedIPv6Address(), 'fe80::');
      expect('fe80::%18'.shortenedIPv6Address(), 'fe80::');
      expect('fe80::%abc0134456789ab'.shortenedIPv6Address(), 'fe80::');

      expect('0000:0000:0001:0000:0000:0000:0000:0000'.shortenedIPv6Address(), '0:0:1::');
      expect('0000:0000:0000:0000:0000:0001:0000:0000'.shortenedIPv6Address(), '::1:0:0');
      expect('0000:0000:0000:0001:0001:0000:0000:0000'.shortenedIPv6Address(), '::1:1:0:0:0');
      expect('0000:0000:0001:0000:0000:0001:0000:0000'.shortenedIPv6Address(), '::1:0:0:1:0:0');
    });
  });

  group('IterableStringPrime Tests', () {
    setUp(() {});

    test('IterableStringPrime.whereNotEmpty()', () {
      final list = List<String>.empty(growable: true);

      expect(list.whereNotEmpty(), []);

      list.add('');
      expect(list.whereNotEmpty(), []);

      list.add('Test');
      expect(list.whereNotEmpty(), ['Test']);

      list.add('');
      expect(list.whereNotEmpty(), ['Test']);

      list.add('Test 2');
      expect(list.whereNotEmpty(), ['Test', 'Test 2']);
    });
  });

  group('IterableOptionalStringPrime Tests', () {
    setUp(() {});

    test('IterableOptionalStringPrime.whereNotEmpty()', () {
      final list = List<String?>.empty(growable: true);

      expect(list.whereNotEmpty(), []);

      list.add('');
      expect(list.whereNotEmpty(), []);

      list.add(null);
      expect(list.whereNotEmpty(), []);

      list.add('Test');
      expect(list.whereNotEmpty(), ['Test']);

      list.add('');
      expect(list.whereNotEmpty(), ['Test']);

      list.add(null);
      expect(list.whereNotEmpty(), ['Test']);

      list.add('Test 2');
      expect(list.whereNotEmpty(), ['Test', 'Test 2']);
    });
  });
}

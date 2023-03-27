// ignore_for_file: avoid_print

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('call Faker', () {
    var faker = Faker();

    print(faker.internet.email());
    // francisco_lebsack@buckridge.com

    print(faker.internet.ipv6Address());
    // 2450:a5bf:7855:8ce9:3693:58db:50bf:a105

    print(faker.internet.userName());
    // fiona-ward

    print(faker.person.name());
    // Fiona Ward

    print(faker.person.prefix());
    // Mrs.

    print(faker.person.suffix());
    // Sr.

    print(faker.lorem.sentence());
  });

  test('String.split() splits the string on the delimiter', () {
    var string = 'foo,bar,baz';
    expect(string.split(','), equals(['foo', 'bar', 'baz']));
  });

  test('String.trim() removes surrounding whitespace', () {
    var string = '  foo ';
    expect(string.trim(), equals('foo'));
  });
  group('String', () {
    test('.split() splits the string on the delimiter', () {
      var string = 'foo,bar,baz';
      expect(string.split(','), equals(['foo', 'bar', 'baz']));
    });

    test('.trim() removes surrounding whitespace', () {
      var string = '  foo ';
      expect(string.trim(), equals('foo'));
    });
  });

  group('int', () {
    test('.remainder() returns the remainder of division', () {
      expect(11.remainder(3), equals(2));
    });

    test('.toRadixString() returns a hex string', () {
      expect(11.toRadixString(16), equals('b'));
    });
  });
}

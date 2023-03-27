import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/utlis/string_extension.dart';

void main() {
  group('정규식', () {
    test('휴대폰 번호 테스트', () {
      String phoneNumber = "01012345678";
      expect(phoneNumber.isPhoneNumber, true);
    });
    test('이메일 테스트', () {
      String email = "seiltj@naver.com";
      expect(email.isEmail, true);
    });
    test('패스워드 테스트', () {
      String passWord = "a1234567*";
      expect(passWord.isPassword, true);
    });
    test('url 테스트', () {
      String url = "https://fluttergems.dev/";
      expect(url.isUrl, true);
    });
  });
}
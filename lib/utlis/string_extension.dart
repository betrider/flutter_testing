
// ignore_for_file: constant_identifier_names

extension StringExtension on String? {

  /// 이메일 확인
  bool get isEmail {
    if (this == null) return false;
    return RegExp(RegExpEMAIL).hasMatch(this!);
  }

  /// 패스워드 확인
  bool get isPassword {
    if (this == null) return false;
    return RegExp(RegExpCheckPASSWORD).hasMatch(this!);
  }

  /// 휴대폰 번호 확인
  bool get isPhoneNumber {
    if (this == null) return false;
    return RegExp(RegExpSMARTPHONE).hasMatch(this!);
  }

  /// URL 확인
  bool get isUrl {
    if (this == null) return false;
    return RegExp(RegExpURL).hasMatch(this!);
  }
}

/// 이메일 정규식
const RegExpEMAIL =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

/// 첫글자 공백 제거
const RegExpTrimLeft = r"^\s+";

/// 핸드폰번호 정규식
const RegExpSMARTPHONE = r'^([ \-]?)?0?1([0]{1})[ \-]?\d{4}[ \-]?\d{4}$';

/// 소문자 영문 정규식
const RegExpLOWERAB = r'(?=.*[a-z])';

/// 대문자 영문 정규식
const RegExpUPPERAB = r'(?=.*[A-Z])';

/// 영문 소문자 + 숫자 정규식
const RegExpNUMLOWERAB = r'^[\S][a-z0-9_\-=@,\.;]+$';

/// 한글 & 영문 정규식
const RegExpKOEN = r'^[가-힣a-z0-9]+$';

/// URL 정규식
const RegExpURL = r"[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{2,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";

/// 한글 정규식
const RegExpKOREAN = r'[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]';

/// 한글 자음 모음 정규식
const RegExpINCOMPLETE_KOREAN = r'[ㄱ-ㅎ|ㅏ-ㅣ]';

/// 생년월일(6자리) 정규식
const RegExpBIRTHDAY = r'([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))';

/// 이름
const RegExpNAME = r'[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]';

/// 기록하기 이름
const RegExpPOSTNAME =
    r'''[\da-zA-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ|\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\("']''';

/// 패스워드 (영문 | 숫자 | 특수문자이면서 6글자 이상 18글자 이하) 정규식
const RegExpPASSWORD = r'''[\da-zA-Z\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\("']''';

/// 패스워드 검증 (영문 + 숫자 + 특수문자이면서 8글자 이상 15글자 이하) 정규식
const RegExpCheckPASSWORD = '$RegExpPASSWORD{6,18}';

/// 이모지 검증
const RegExpEMOJI =
    r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])';

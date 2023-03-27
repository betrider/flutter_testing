// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  late String url;

  /// 최초 한번만 실행(처음)
  setUpAll(() {
    print('start - setUpAll');
    url = 'http://jsonplaceholder.typicode.com/posts/1';
  });

  /// test별로 한번씩 실행(처음)
  setUp(() async {
    print('start - setUp');
  });

  test('http호출', () async {
    String result = await getDataWithHttp(url);
    print(result);
  });
  test('dio호출', () async {
    String result = await getDataWithDio(url);
    print(result);
  });

  /// test별로 한번씩 실행(마지막)
  tearDown(() async {
    print('end - tearDown');
  });

  /// 최초 한번씩 실행(마지막)
  tearDownAll(() {
    print('end - tearDownAll');
  });
}

Future<String> getDataWithHttp(String url) async {
  http.Response response = await http.get(
    Uri.parse(url),
    headers: {"Accept": "application/json"},
  );

  return response.body;
}

final dio = Dio();

Future<String> getDataWithDio(String url) async {
  Response<String> response = await dio.get(url);

  return response.data!;
}
// ignore_for_file: avoid_print
import 'dart:io';

void main(List<String> arguments) async {
  // 터미널:dart run :coverage
  await execute('flutter test --coverage test/2_widget_test/app_test.dart');
  await execute('genhtml coverage/lcov.info -o coverage/html');
  await execute('open coverage/html/index.html');
}

Future<void> execute(String cmd, {String? dir, bool skipError = false}) async {
  print(cmd + (dir != null ? ' [on $dir]' : ''));

  var args = cmd.split(' ');
  var command = args.first;
  var options = args.length > 1
      ? args.getRange(1, args.length).toList()
      : [] as List<String>;

  var result = await Process.run(
    command,
    options,
    workingDirectory: dir,
  );

  print(result.stdout);
  if (!skipError && result.stderr != '') {
    throw Exception(result.stderr);
  }
}
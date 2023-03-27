import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart';

void main() {
  group('위젯 테스트', () {
    testWidgets('app', (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
    testWidgets('MyWidget has a title and message', (tester) async {
      await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));
      final titleFinder = find.text('T');
      final messageFinder = find.text('M');

      expect(titleFinder, findsOneWidget);
      expect(messageFinder, findsOneWidget);
    });
  });
}
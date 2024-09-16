import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poly_events_mobile/WelcomePage/pageTitle.dart';

Widget testWidget = MediaQuery(data: new MediaQueryData(), child: PageTitle());
void main() {
  group('title page component test', () {
    testWidgets('Test that the page title exist', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Column), findsOneWidget);
    });

    testWidgets('Test that there are two text field',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Text), findsNWidgets(2));
    });

    testWidgets('Test that there is one logo image',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Image), findsOneWidget);
    });
  });
}

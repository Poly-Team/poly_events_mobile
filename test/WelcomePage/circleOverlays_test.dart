import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poly_events_mobile/WelcomePage/circleOverlays.dart';

Widget testWidget =
    MediaQuery(data: new MediaQueryData(), child: CircleOverlays());
void main() {
  group('circle component component test', () {
    testWidgets('Test that there is a stack', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Stack), findsOneWidget);
    });

    testWidgets('Test that there are two images', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Image), findsNWidgets(2));
    });

    testWidgets('Test that there are two positioned component',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Positioned), findsNWidgets(2));
    });
  });
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poly_events_mobile/WelcomePage/signInButtons.dart';

Widget testWidget =
    MediaQuery(data: new MediaQueryData(), child: BottomSquareWithButton());
void main() {
  group('signin component test', () {
    testWidgets('Test that the background is here',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(DecoratedBox), findsOneWidget);
    });

    testWidgets('Test that there are two GestureDetector is here',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(GestureDetector), findsNWidgets(2));
    });

    testWidgets('Test that there is a container for the section',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Container), findsNWidgets(1));
    });

    testWidgets('Test that the background has linear gradient',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(WelcomeButtons), findsNWidgets(2));
    });
  });
}

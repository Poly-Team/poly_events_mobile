import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poly_events_mobile/WelcomePage/calenderPic.dart';

Widget testWidget =
    MediaQuery(data: new MediaQueryData(), child: CalenderPic());
void main() {
  group('calender component test', () {
    testWidgets('Test that the picture is there', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(Image), findsOneWidget);
    });
  });
}

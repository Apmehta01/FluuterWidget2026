import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_2026/main.dart';

void main() {
  testWidgets('home dashboard is visible', (WidgetTester tester) async {
    await tester.pumpWidget(const WidgetDemoApp());

    expect(find.text('Flutter Common Widgets Demo'), findsOneWidget);
    expect(find.text('ListView Demo Screen'), findsOneWidget);
  });
}

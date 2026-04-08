import 'package:flutter_test/flutter_test.dart';

import 'package:cau_5/app/my_app.dart';

void main() {
  testWidgets('shows home screen with pick color action', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Pick Color'), findsOneWidget);
    expect(find.text('Màu hiện tại: Red'), findsOneWidget);
  });
}

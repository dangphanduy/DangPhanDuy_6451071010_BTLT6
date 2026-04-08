import 'package:flutter_test/flutter_test.dart';

import 'package:cau_4/app/my_app.dart';
import 'package:cau_4/utils/app_constants.dart';

void main() {
  testWidgets('shows product list and opens detail screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text(AppConstants.appTitle), findsWidgets);
    expect(find.text(AppConstants.products.first.name), findsOneWidget);
    expect(find.text(AppConstants.products.first.price), findsOneWidget);

    await tester.tap(find.text(AppConstants.products.first.name));
    await tester.pumpAndSettle();

    expect(find.text('Product Detail'), findsOneWidget);
    expect(find.text(AppConstants.products.first.name), findsOneWidget);
    expect(
      find.text('Price: ${AppConstants.products.first.price}'),
      findsOneWidget,
    );
  });
}

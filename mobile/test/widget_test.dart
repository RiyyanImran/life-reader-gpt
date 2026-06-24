import 'package:flutter_test/flutter_test.dart';
import 'package:lifereader_gpt/main.dart';
import 'package:lifereader_gpt/screens/home_screen.dart';

void main() {
  testWidgets('App loads home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const LifeReaderApp());
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));

    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.textContaining('FACE READING'), findsOneWidget);
  });
}

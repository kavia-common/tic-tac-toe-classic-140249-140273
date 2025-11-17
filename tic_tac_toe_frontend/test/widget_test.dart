import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('Shows Tic Tac Toe title and initial status', (tester) async {
    await tester.pumpWidget(const MyApp());

    // App title in AppBar
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Initial status should show Player X’s turn
    expect(find.textContaining('Player X'), findsOneWidget);
  });
}

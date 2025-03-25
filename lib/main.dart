import 'package:piggytoken/core/hooks/hooks.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => NavProvider())],
    child: const StarterScreen(),
  ));
}

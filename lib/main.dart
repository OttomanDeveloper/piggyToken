import 'package:piggytoken/core/hooks/hooks.dart';

void main() {
  runApp(
    MultiProvider(child: StarterScreen(), providers: [
      ChangeNotifierProvider<NavProvider>(create: (_) => NavProvider())
    ]),
  );
}

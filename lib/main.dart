import 'package:animation_app/controller/valoratn_controller.dart';
import 'package:provider/provider.dart';

import 'headers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ValorantController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

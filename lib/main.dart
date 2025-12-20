import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:target/app/core/routes/app_router.dart';
import 'package:target/app/core/routes/app_routes.dart';
import 'package:target/app/core/theme/app_theme.dart';
import 'package:target/app/stores/auth_store.dart';
import 'package:target/app/stores/notes_store.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthStore>(create: (_) => AuthStore()),
        Provider<NotesStore>(create: (_) => NotesStore()),  
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}

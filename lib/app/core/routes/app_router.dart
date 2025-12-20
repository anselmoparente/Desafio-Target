import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:target/app/core/routes/app_routes.dart';
import 'package:target/app/pages/home/home_page.dart';
import 'package:target/app/pages/login/login_page.dart';
import 'package:target/app/stores/notes_store.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginPage());

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => Provider<NotesStore>(
            create: (_) => NotesStore(),
            child: const HomePage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Rota não encontrada'))),
        );
    }
  }
}

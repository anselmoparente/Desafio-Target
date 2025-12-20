import 'package:flutter/material.dart';
import 'package:target/app/core/widgets/ds_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DSAppBar(title: 'Home'),
      body: const Center(child: Text('Tela Inicial')),
    );
  }
}

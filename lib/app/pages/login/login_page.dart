import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:target/app/core/routes/app_routes.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/theme/app_typography.dart';
import 'package:target/app/core/widgets/ds_button.dart';
import 'package:target/app/core/widgets/ds_card.dart';
import 'package:target/app/core/widgets/ds_text_field.dart';
import 'package:target/app/stores/auth_store.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<AuthStore>();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: DSCard(
            child: Observer(
              builder: (_) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Bem-vindo',
                      style: AppTypography.headline,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      'Faça login para continuar',
                      style: AppTypography.body,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    DSTextField(
                      label: 'Email',
                      onChanged: store.setEmail,
                      errorText: store.emailError,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    DSTextField(
                      label: 'Senha',
                      obscureText: true,
                      onChanged: store.setPassword,
                      errorText: store.passwordError,
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    DSButton(
                      label: 'Entrar',
                      isLoading: store.isLoading,
                      onPressed: () async {
                        store.submit();

                        if (!store.isFormValid) return;

                        final success = await store.login();
                        if (success && context.mounted) {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.home,
                          );
                        }
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

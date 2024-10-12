import 'package:bake_budget_frontend/features/auth/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthErrorMessage extends StatelessWidget {
  const AuthErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthErrorState) {
          return Text(
            state.message,
            style: const TextStyle(color: Colors.red),
          );
        }
        return const SizedBox.shrink(); // Если ошибки нет, ничего не отображаем
      },
    );
  }
}

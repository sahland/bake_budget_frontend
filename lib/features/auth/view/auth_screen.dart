import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/auth/widgets/widgets.dart';
import 'package:bake_budget_frontend/features/features.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = 16.0;

    return Scaffold(
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is AuthAuthenticatedState) {
                      context.router.replace(const ProductsRoute());
                    } else if (state is AuthErrorState) {
                      _showError(context, state.message);
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      children: [
                        AuthForm(
                          onSubmit: (email, password) {
                            context.read<AuthBloc>().add(LoggedInEvent(
                                  email: email,
                                  password: password,
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

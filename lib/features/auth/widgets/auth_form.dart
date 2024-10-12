import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  final Function(String email, String password) onSubmit;
  final double labelSize;

  const AuthForm({required this.onSubmit, this.labelSize = 24, super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const authLabel = 'Авторизация';
    const emailLabel = 'Email';
    const emailValidatorText = 'Введите email';
    const passwordLabel = 'Пароль';
    const passwordValidatorText = 'Введите пароль';
    const sizedBoxHeight = 40.0;
    final theme = Theme.of(context);

    return Column(
      children: [
        const SizedBox(
          height: sizedBoxHeight,
        ),
        _authLabel(authLabel, theme),
        const SizedBox(
          height: sizedBoxHeight,
        ),
        _authFields(emailLabel, emailValidatorText, passwordLabel,
            passwordValidatorText),
      ],
    );
  }

  Text _authLabel(String authLabel, ThemeData theme) {
    return Text(
      authLabel,
      style: GoogleFonts.pacifico(
        color: theme.cardColor,
        fontSize: widget.labelSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Form _authFields(
    String emailLabel,
    String emailValidatorText,
    String passwordLabel,
    String passwordValidatorText, [
    String authButtonTitle = 'Войти',
    String regButtonTitle = 'Зарегистрироваться',
    double buttonBorderRadius = 14,
    double width = 300,
  ]) {
    const sizedBoxHeight = 20.0;
    const horizontalPadding = 20.0;

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding,
        ),
        child: Column(
          children: [
            BaseAuthForm(
              labelText: emailLabel,
              validatorText: emailValidatorText,
              controller: _emailController,
              obscureText: false,
            ),
            const SizedBox(
              height: sizedBoxHeight,
            ),
            BaseAuthForm(
              labelText: passwordLabel,
              validatorText: passwordValidatorText,
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(height: sizedBoxHeight),
            BaseElevatedButton(
              onPressed: _submitForm,
              title: authButtonTitle,
              borderRadius: buttonBorderRadius,
              width: width,
            ),
            const SizedBox(height: sizedBoxHeight),
            BaseTextButton(
              title: regButtonTitle,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      widget.onSubmit(_emailController.text, _passwordController.text);
    }
  }
}

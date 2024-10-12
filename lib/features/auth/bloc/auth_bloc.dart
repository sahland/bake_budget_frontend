import 'dart:developer';

import 'package:bake_budget_frontend/data/data.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TokenStorage tokenStorage;
  final AuthApiClient authApiClient;

  AuthBloc({
    required this.tokenStorage,
    required this.authApiClient,
  }) : super(AuthInitialState()) {
    on<AppStartedEvent>(_onAppStarted);
    on<LoggedInEvent>(_onLoggedIn);
    on<LoggedOutEvent>(_onLoggedOut);
  }

  Future<void> _onAppStarted(
      AppStartedEvent event, Emitter<AuthState> emit) async {
    log('App started event triggered');

    final token = await tokenStorage.getToken();
    log('Token retrieved: $token');

    if (token != null) {
      emit(AuthAuthenticatedState(token: token));
      log('Emitting Authenticated state with token: $token');
    } else {
      emit(AuthUnauthenticatedState());
      log('Emitting Unauthenticated state');
    }
  }

  Future<void> _onLoggedIn(LoggedInEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadingState());
    log('Emitting Loading state');

    try {
      final signInData = {
        'email': event.email,
        'password': event.password,
      };

      log('Attempting to sign in with data: $signInData');
      final signInResponse = await authApiClient.signIn(signInData);
      log('Received response: ${signInResponse.toJson()}');

      await tokenStorage.saveToken(signInResponse.token);
      log('Token saved: ${signInResponse.token}');

      await tokenStorage.saveRefreshToken(signInResponse.refreshToken);
      log('Refresh token saved: ${signInResponse.refreshToken}');

      emit(AuthAuthenticatedState(token: signInResponse.token));
      log('Emitting Authenticated state with access token: ${signInResponse.token}');
    } catch (e, stackTrace) {
      log('Login error: $e');
      log('Stack trace: $stackTrace');
      emit(AuthErrorState(message: 'Ошибка входа'));
      log('Emitting Error state with message: Ошибка входа');
    }
  }

  Future<void> _onLoggedOut(
      LoggedOutEvent event, Emitter<AuthState> emit) async {
    log('LoggedOut event triggered');

    emit(AuthLoadingState());
    log('Emitting Loading state');

    await tokenStorage.clearTokens();
    log('Tokens cleared from storage');

    emit(AuthUnauthenticatedState());
    log('Emitting Unauthenticated state');
  }
}

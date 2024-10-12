part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

final class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthAuthenticatedState extends AuthState {
  const AuthAuthenticatedState({
    required this.token,
  });

  final String token;

  @override
  List<Object?> get props => [token];
}

class AuthUnauthenticatedState extends AuthState {}

class AuthErrorState extends AuthState {
  const AuthErrorState({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [message];
}

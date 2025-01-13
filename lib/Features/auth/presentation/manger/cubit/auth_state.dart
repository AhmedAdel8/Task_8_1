part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class Authsuccess extends AuthState {
  final user;
  Authsuccess({required this.user});
}

final class AuthFaliure extends AuthState {
  final String message;
  AuthFaliure({required this.message});
}

final class ChooseImage extends AuthState {}

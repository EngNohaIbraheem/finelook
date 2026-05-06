part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class LoadingRegister extends RegisterState {}
final class SuccessRegister extends RegisterState {}
final class FailureRegister extends RegisterState {
  final String msg;
  FailureRegister(this.msg);
}






part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState{

  String?  Loading;
  LoginLoadingState(this.Loading);

}
class LoginSucssesState extends LoginState{
  Post? resposne;

  LoginSucssesState({required this.resposne});
}
class LoginErrorState extends LoginState{
  String? error ;
   LoginErrorState({required this.error});
}

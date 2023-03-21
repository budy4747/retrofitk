import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../Reposetry/repo.dart';
import '../../model/User.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  Repository? reposetry;
  LoginCubit({required this.reposetry}) : super(LoginInitial());
  Post? response;

  Future<Post?>noVerify(String mobile , String app) async{
    emit(LoginLoadingState("loading"));
    try{
      response = await reposetry?.rCreateuser(mobile, app);
      print("Post cubit response #1188 ===> "+response.toString());
    }on DioError catch (ex){
print("Api error Dio ==> ${ex.toString()}");
if(ex.type == DioErrorType.connectTimeout){
emit(LoginErrorState(error: "Connection time out. Please check your internet connection"));
}else {
  print("else ${ex.error}");
}
    }
  }

}

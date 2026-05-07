import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:newfashionstore/core/network/api_service.dart';
import 'package:newfashionstore/core/network/cache/cache_helper.dart';
import 'package:newfashionstore/features/auth/login/logic/models/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  // create login function
  ApiService apiService = ApiService(Dio());
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  void login({required String email, required String pass}) async {
    emit(LoginLoading());

    apiService.postData(
        url: "api/auth/login",
        data: {"email": email, "password": pass}).then((res) async {
      final model = LoginModel.fromJson(res.data);
      await CacheHelper.saveToken(model.data?.token ?? '');

      String? token = await CacheHelper.getToken();
      print("token store in login function $token");
      emit(LoginSuccess());
    }).catchError((e) {
      emit(LoginFailure(e.toString()));
    });
  }
}

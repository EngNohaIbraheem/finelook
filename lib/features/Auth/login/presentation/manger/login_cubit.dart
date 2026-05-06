import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:newfashionstore/core/network/cache/cache_helper.dart';
import 'package:dio/dio.dart';

import '../../../../../core/network/api_service.dart';
import '../../logic/models/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  ApiService apiService = ApiService(Dio());

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());

    try {
      final res = await apiService.postData(
        url: "api/auth/login",
        data: {
          "email": email,
          "password": password,
        },
      );

      final model = LoginModel.fromJson(res.data);

      await CacheHelper.saveToken(model.data?.token ?? '');

      String? token = await CacheHelper.getToken();

      print("Token stored: $token");

      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}


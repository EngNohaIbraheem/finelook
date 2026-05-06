
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:newfashionstore/core/network/cache/cache_helper.dart';

import '../../../../../core/network/api_service.dart';
import '../../logic/models/register_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  ApiService apiService = ApiService(Dio());

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();

  void register({
    required String email,
    required String pass,
    required String name,
    required String phone,
  }) async {
    emit(LoadingRegister());

    apiService
        .postData(
      url: "api/auth/register",
      data: {
        "email": email,
        "password": pass,
        "phone": phone,
        "name": name,
      },
    )
        .then((res) {
      final model = RegisterModel.fromJson(res.data);

      CacheHelper.saveToken(model.data?.token ?? '');

      emit(SuccessRegister());
    }).catchError((e) {
      emit(FailureRegister(e.toString()));
    });
  }
}
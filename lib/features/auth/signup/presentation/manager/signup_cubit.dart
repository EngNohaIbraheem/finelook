import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../../../core/network/api_service.dart';
import '../../../../../core/network/cache/cache_helper.dart';
import '../../../login/logic/models/login_model.dart';
import '../logic/models/register_model.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  ApiService apiService = ApiService(Dio());
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController nameC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  void signup(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    emit(SignupLoading());

    apiService.postData(url: "api/auth/register", data: {
      "email": email,
      "password": password,
      "name": name,
      "phone": phone,
    }).then((res) async {
      final model = RegisterModel.fromJson(res.data);
      CacheHelper.saveToken(  model.data?.token ?? '');

      String? token = await CacheHelper.getToken();
      print("token store in login function $token");
      emit(SignupSuccess());
    }).catchError((e) {});
  }
}

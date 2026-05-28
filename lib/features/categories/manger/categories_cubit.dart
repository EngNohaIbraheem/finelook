import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:newfashionstore/core/network/api_service.dart';

import '../logic/models/category_model.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());

  // CategoriesCubit get(context) => context.read<CategoriesCubit>();
  static CategoriesCubit get(context) => BlocProvider.of(context);

  ApiService apiService = ApiService(Dio());
  CategoriesModel ? categoriesModel;
  void getCategories (){
    emit(CategoriesLoading());
    apiService.getData(
        url: "api/categories"
    ).then((res) {
      final model = CategoriesModel.fromJson(res.data);
      categoriesModel = model;
      emit(CategoriesSuccess());
    }).catchError(onError);
    print(e);
    emit(CategoriesFailure());
  }
}

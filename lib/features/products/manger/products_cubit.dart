import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:newfashionstore/core/network/api_service.dart';

import '../model/products_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());
  ApiService apiService = ApiService(Dio());
  ProductsModel? PoductsModel;

  void getproducts() {
    emit(ProductsLoading());
    apiService.getData(url: "api/products").then((res) async {
      final model = ProductsModel.fromJson(res.data);
      PoductsModel = model;
      emit(ProductsSuccess());
    }).catchError((e) {
      print(e);
      emit(ProductsFailure());
    });
  }
}

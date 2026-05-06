import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newfashionstore/core/network/cache/cache_helper.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.initCacheHelper();
  runApp(const MyApp());
}

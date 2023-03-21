

import 'dart:convert';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/http.dart';

import '../model/User.dart';
import '../model/imagemodel.dart';
part 'ApiClient.g.dart';

@RestApi(baseUrl: 'http://testschool.paperbirdtech.com/api/School/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {required String baseUrl}){
    dio.options =  BaseOptions(
      receiveTimeout: 30000,
      connectTimeout: 30000,

    );
    dio.interceptors.add(
      DioLoggingInterceptor(
        level: Level.body,
        compact: false,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          if (response.requestOptions.method == HttpMethod.POST) {
            response.data = jsonDecode(response.data as String);
          }
          return handler.next(response);
        },
      ),
    );

    return _ApiClient(dio , baseUrl:  baseUrl);
  }

  @POST('otp_verification.php')
  @FormUrlEncoded()
  Future<Post> noVerify(@Field('mobile') mobile, @Field('app') app);

  @GET("https://json-generator.com/api/json/get/ceLGCumWjS?indent=2")
  Future<List<Slidermodel>> getTasks();
}


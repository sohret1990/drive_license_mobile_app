import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:drive_license_app/models/question_model.dart';

class RequestHelper {
  final _baseUrl = "http://10.0.2.2:3000";

  get dio => Dio(BaseOptions(baseUrl: _baseUrl));

  Future<Response> getData(String url) async {
    Response response = await dio.get(url);
   // print(response);
    var data =response.data;

   /* print('object');
    print(data);*/
    return response;
  }

  Future<Map<String, dynamic>> getDataById(String url, int id) async {
    return await dio.get('${url}/${id}') as Map<String, dynamic>;
  }
}

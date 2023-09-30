import 'package:dio/dio.dart';
import 'package:drive_license_app/helpers/app_config.dart';
import 'package:get/get.dart';

class RequestHelper {
  final _baseUrl = Get.find<AppConfig>().url;

  get dio => Dio(BaseOptions(baseUrl: _baseUrl));

  Future<dynamic> getData(String url) async {
    print(url);
    var response = await dio.get(url);
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

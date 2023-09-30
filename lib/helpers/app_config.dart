class AppConfig{

  final String appName;
  final String url;



   AppConfig.fromJson(Map<String, dynamic> json):
        appName= json["appName"], url=  json["url"];

}
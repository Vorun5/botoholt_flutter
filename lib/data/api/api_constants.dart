class ApiConstants {
  static const String baseUrl = 'https://dev.bho.lt/api/v1';
  static const String baseUrl2 = 'https://bho.lt/api/v1';
  static const String streamersEndPoint = '/streams/';
  static String streamerEndPoint(String name) => '/streams/$name/';
  static String streamerHitsotyEndPoint(String name) => '/$name/songs/';
}

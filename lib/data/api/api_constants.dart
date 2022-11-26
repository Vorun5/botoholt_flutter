class ApiConstants {
  static const String baseUrl = 'https://dev.bho.lt/api/v1';
  static const String baseUrl2 = 'https://bho.lt/api/v1';
  static const String baseUrl3 = 'https://bho.lt/api';
  static const String streamersEndPoint = '/streams/';
  static String streamerEndPoint(String name) => '/streams/$name/';
  static String streamerQueueEndPoint(String name) => '/$name/';
  static String streamerHitsotyEndPoint(String name) => '/$name/songs/';
}

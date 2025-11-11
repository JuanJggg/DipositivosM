import 'package:dio/dio.dart';

class LoginServices {
  static final _dio = Dio();
  static final _url = 'https://api.escuelajs.co/api/v1/auth/login';

  static Future<String> getToken(String username, String password) async {
    try {
      final response = await _dio.post(
        _url,
        data: {'email': username, 'password': password},
      );

      if(response.statusCode != 200) {
        return "Error en el login";
      }
      print("----------------------");
      print(response.data);
      print("----------------------");

      return "Login exitoso";
    } on DioException catch (e) {
      return "Error en el login: $e";
    }
  }
}

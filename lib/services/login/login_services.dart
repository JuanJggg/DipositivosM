import 'package:dio/dio.dart';

class LoginServices {
  static final _dio = Dio();
  static final _url = 'https://api.escuelajs.co/api/v1/auth/login';

  static Future<String> getToken(String username, String password) async {
    final response = await _dio.post(
      _url,
      data: {'email': username, 'password': password},
    );
    return "Login exitoso";
  }
}

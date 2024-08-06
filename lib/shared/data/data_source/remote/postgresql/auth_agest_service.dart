import 'package:dio/dio.dart';

import '../../../../../repositories/auth/data_models/token_data_model.dart';
import '../../../../../repositories/user/data_models/user_data_model.dart';
import '../auth_service.dart';

class AuthAgestService extends AuthService {
  final Dio _dio = Dio();

  static const uri = 'http://127.0.0.1:3000';

  // static const uri = 'http://172.16.11.139:14000';

  @override
  Future<TokenDataModel> signIn(String email, String password) async {
    const url = '/api/v1/auth/sign-in';

    try {
      final response = await _dio.post(uri + url, data: {
        'email': email,
        'password': password,
      });
      if(response.statusCode == 200) {
        TokenDataModel token = TokenDataModel(
            accessToken: response.data['access_token'],
            refreshToken: response.data['refresh_token']
        );

        return token;
      } else {
        print('Error code: ${response.statusCode}');
        throw Exception('Incorrect email or password');
      }
    } catch(e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<UserDataModel> signUp(String email, String password, String name) async {
    const url = '/api/v1/auth/sign-up';

    try {
      final response = await _dio.post(uri + url, data: {
        'email': email,
        'password': password,
        'name': name,
      });

      if (response.statusCode == 200) {
        UserDataModel user = UserDataModel(
            userId: response.data['id'],
            username: response.data['name'],
            email: response.data['email'],
        );

        return user;
      }
      else {
        print('Error code: ${response.statusCode}');
        throw Exception('Duplication account');
      }
    } catch(e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<bool> signOut(String refreshToken) async {
    const url = '/api/v1/auth/sign-out';

    try {
      final response = await _dio.delete(uri + url, queryParameters: {
        'token': refreshToken,
      });

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch(e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<TokenDataModel> refreshToken(String refreshToken)  async {
    const url = 'api/v1/auth/refresh-token';

    try {
      final response = await _dio.get(uri + url, queryParameters: {
        'token': refreshToken,
      });

      if (response.statusCode == 200) {
        TokenDataModel token = TokenDataModel(
            accessToken: response.data['access_token'],
            refreshToken: response.data['refresh_token'],
        );
        return token;
      }
      else {
        throw Exception('Error code: ${response.statusCode}');
      }
    } catch(e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }

  @override
  Future<UserDataModel?> getMe(String accessToken) async {
    const url = '/api/v1/auth/get_';

    try {
      final response = await _dio.get(uri + url, options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $accessToken',
        }
      ));

      if (response.statusCode == 200) {
        UserDataModel user = UserDataModel(
            userId: response.data['id'],
            username: response.data['name'],
            email: response.data['email']
        );
        return user;
      }
      return null;
    } catch(e) {
      print('Error: $e');
      if (e is DioException && e.response != null) {
        throw Exception('Error code: ${e.response?.statusCode}');
      } else {
        throw Exception('An unknown error occurred');
      }
    }
  }


}
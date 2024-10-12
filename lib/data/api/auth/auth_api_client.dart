import 'dart:developer';
import 'dart:io';
import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  factory AuthApiClient.create({String? apiUrl}) {
    final dio = Dio();

    // Логирование всех запросов и ответов
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader:
          true, // Логируем заголовки ответа для более полной картины
      requestHeader:
          true, // Логируем заголовки запроса для полного понимания запроса
      error: true,
      logPrint: (Object object) {
        log('Dio log: $object');
      },
    ));

    // Игнорировать ошибки SSL (для разработки)
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        log('SSL сертификат был отклонен: host = $host, port = $port');
        return true; // Игнорировать SSL ошибки для localhost
      };
      return client;
    };

    // Проверить API URL
    if (apiUrl != null) {
      log('Создан AuthApiClient с базовым URL: $apiUrl');
      return AuthApiClient(dio, baseUrl: apiUrl);
    } else {
      log('Создан AuthApiClient без базового URL');
      return AuthApiClient(dio);
    }
  }

  @POST('/api/auth/signup')
  Future<SignUpModel> signUp(
    @Body() Map<String, dynamic> body,
  );

  @POST('/api/auth/signin')
  Future<AuthResponseModel> signIn(
    @Body() Map<String, dynamic> body,
  );

  @POST('/api/auth/refreshToken')
  Future<TokenRefreshModel> refreshToken(
    @Body() Map<String, dynamic> body,
  );
}

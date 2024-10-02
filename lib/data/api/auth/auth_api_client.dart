import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class AuthApiClient {
  factory AuthApiClient(
    Dio dio,
    {String baseUrl}
  ) = _AuthApiClient;

  factory AuthApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return AuthApiClient(dio, baseUrl: apiUrl);
    }
    return AuthApiClient(dio);
  }

  @POST('/api/auth/signup')
  @MultiPart()
  Future<SignUpModel> signUp(
    @Part(name: 'name') String username,
    @Part(name: 'email') String email,
    @Part(name: 'password') String password,
  );

  @POST('/api/auth/signin')
  @MultiPart()
  Future<SignInModel> signIn(
    @Part(name: 'email') String email,
    @Part(name: 'password') String password,
  );

  @POST('/api/auth/refreshToken')
  @MultiPart()
  Future<TokenRefreshModel> refreshToken(
    @Part(name: 'refreshToken') String refreshToken,
  );

}
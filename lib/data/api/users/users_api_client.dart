import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'users_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class UsersApiClient {
  factory UsersApiClient(
    Dio dio,
    {String baseUrl}
  ) = _UsersApiClient;

  factory UsersApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return UsersApiClient(dio, baseUrl: apiUrl);
    }
    return UsersApiClient(dio);
  }

  @PUT('/api/updatePassword')
  Future<void> updatePassword(
    @Body() PasswordChangeModel requestBody,
  );

  @POST('/api/signOut')
  @MultiPart()
  Future<void> signOut();
}
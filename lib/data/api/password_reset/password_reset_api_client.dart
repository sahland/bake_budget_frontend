import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'password_reset_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class PasswordResetApiClient {
  factory PasswordResetApiClient(Dio dio, {String baseUrl}) =
      _PasswordResetApiClient;

  factory PasswordResetApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return PasswordResetApiClient(dio, baseUrl: apiUrl);
    }
    return PasswordResetApiClient(dio);
  }

  @PUT('/api/password/setNew')
  Future<void> updateOrder(
    @Body() ResetPasswordModel resetPassword,
  );

  @POST('/api/password/forgot')
  Future<ResetPasswordModel> forgotPassword(
    @Part(name: 'email') String email,
  );

  @GET('/api/password/approveChangeLink')
  Future<OrdersResponseModel> getOrderByID(
    @Query('token') String token,
  );
}

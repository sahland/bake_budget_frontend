import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'email_approve_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class EmailApproveApiClient {
  factory EmailApproveApiClient(
    Dio dio,
    {String baseUrl}
  ) = _EmailApproveApiClient;

  factory EmailApproveApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return EmailApproveApiClient(dio, baseUrl: apiUrl);
    }
    return EmailApproveApiClient(dio);
  }

  @POST('/api/email/sendMail')
  Future<void> sendMail(
    @Part(name: 'email') String email
  );

  @GET('/api/email/approveLink')
  Future<void> getOrderByID(
    @Query('token') String token,
  );
}
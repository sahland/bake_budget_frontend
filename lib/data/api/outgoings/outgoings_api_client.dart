import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'outgoings_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class OutgoingsApiClient {
  factory OutgoingsApiClient(Dio dio, {String baseUrl}) = _OutgoingsApiClient;

  factory OutgoingsApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return OutgoingsApiClient(dio, baseUrl: apiUrl);
    }
    return OutgoingsApiClient(dio);
  }

  @PUT('/api/outgoings/update/{id}')
  Future<void> updateOutgoings(
    @Path('id') int id,
    @Body() OutgoingsRequestModel requestBody,
  );

  @POST('/api/outgoings/create/{productId}')
  @MultiPart()
  Future<OutgoingsRequestModel> createOutgoing(
    @Part(name: 'name') String name,
    @Part(name: 'cost') double cost,
  );

  @GET('/api/outgoings/findAll/{productId}')
  Future<OutgoingsResponseModel> findAllOutgoings(
    @Path('productId') int productId,
  );

  @GET('/api/outgoings/get/{id}')
  Future<OutgoingsResponseModel> getOutgoingByID(@Path('id') int id);

  @DELETE('/api/outgoings/delete/{id}')
  Future<OutgoingsResponseModel> deleteOutgoing(@Path('id') int id);
}

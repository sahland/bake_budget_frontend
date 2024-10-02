import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'orders_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class OrdersApiClient {
  factory OrdersApiClient(
    Dio dio,
    {String baseUrl}
  ) = _OrdersApiClient;

  factory OrdersApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return OrdersApiClient(dio, baseUrl: apiUrl);
    }
    return OrdersApiClient(dio);
  }

  @PUT('/api/orders/update/{id}')
  Future<void> updateOrder(
    @Path('id') int id,
    @Body() OrdersRequestModel requestBody,
  );

  @PUT('/api/orders/setStatus/{id}')
  Future<void> setOrderStatus(
    @Path('id') int id,
    @Field('status') String status,
  );

  @POST('/api/orders/create')
  @MultiPart()
  Future<OrdersRequestModel> createOrder(
    @Part(name: 'name') String name,
    @Part(name: 'description') String description,
    @Part(name: 'extraExpenses') double extraExpenses,
    @Part(name: 'finalWeight') double finalWeight,
    @Part(name: 'marginFactor') double marginFactor,
    @Part(name: 'productId') int productId,
  );

  @POST('/api/orders/calculate')
  @MultiPart()
  Future<CalculationRequestModel> calculateCostPriceOrder(
    @Part(name: 'extraExpenses') double extraExpenses,
    @Part(name: 'marginFactor') double marginFactor,
    @Part(name: 'finalWeight') double finalWeight,
    @Part(name: 'productId') int productId,
  );

  @GET('/api/orders/findAll')
  Future<OrdersResponseModel> findAllOrders();

  @GET('/api/orders/get/{id}')
  Future<OrdersResponseModel> getOrderByID(
    @Path('id') int id
  );

  @DELETE('/api/orders/delete/{id}')
  Future<OrdersResponseModel> deleteOrder(
    @Path('id') int id
  );
}
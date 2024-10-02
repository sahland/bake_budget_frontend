import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'ingredients_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class IngredientsApiClient {
  factory IngredientsApiClient(
    Dio dio,
    {String baseUrl}
  ) = _IngredientsApiClient;

  factory IngredientsApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return IngredientsApiClient(dio, baseUrl: apiUrl);
    }
    return IngredientsApiClient(dio);
  }

  @PUT('/api/ingredients/update/{id}')
  Future<void> updateIngredient(
    @Path('id') int id,
    @Body() IngredientsRequestModel requestBody,
  );


  @POST('/api/ingredients/create')
  @MultiPart()
  Future<IngredientsRequestModel> createIngredient(
    @Part(name: 'name') String name,
    @Part(name: 'weight') double weight,
    @Part(name: 'cost') double cost,
  );

  @GET('/api/ingredients/findAll')
  Future<IngredientsResponseModel> findAllIngredients();

  @GET('/api/ingredients/get/{id}')
  Future<IngredientsResponseModel> getIngredientsByID(
    @Path('id') int id
  );

  @DELETE('/api/ingredients/delete/{id}')
  Future<IngredientsResponseModel> deleteIngredient(
    @Path('id') int id
  );
}
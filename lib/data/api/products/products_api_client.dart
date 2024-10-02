import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'products_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class ProductsApiClient {
  factory ProductsApiClient(
    Dio dio,
    {String baseUrl}
  ) = _ProductsApiClient;

  factory ProductsApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return ProductsApiClient(dio, baseUrl: apiUrl);
    }
    return ProductsApiClient(dio);
  }

  @PUT('/api/products/updateIngredient')
  Future<void> updateIngredientInProduct(
    @Body() IngredientsInProductRequestModel requestBody,
  );

  @PUT('/api/products/update/{id}')
  Future<void> updateProduct(
    @Path('id') int id,
    @Body() ProductsRequestModel requestBody,
  );

  @POST('/api/products/uploadVideo/{id}')
  @MultiPart()
  Future<void> uploadProductVideo(
    @Path('id') int id,
    @Path('file') String file,
  );

  @POST('/api/products/uploadPicture/{id}')
  @MultiPart()
  Future<void> uploadProductPicture(
    @Path('id') int id,
    @Path('file') String file,
  );

  @POST('/api/products/create')
  @MultiPart()
  Future<ProductsRequestModel> createProduct(
    @Part(name: 'name') String name,
    @Part(name: 'weight') double weight,
  );

  @POST('/api/products/addIngredient')
  @MultiPart()
  Future<IngredientsInProductRequestModel> addAnIngredient(
    @Part(name: 'ingredientId') int ingredientId,
    @Part(name: 'productId') int productId,
    @Part(name: 'weight') double weight,
  );

  @GET('/api/products/getPictures/{id}')
  Future<void> getProductPicture(
    @Path('id') int id
  );

  @GET('/api/products/get/{id}')
  Future<ProductsResponseModel> getProductByID(
    @Path('id') int id
  );

  @GET('/api/products/findAll')
  Future<List<ProductsResponseModel>> findAllOrders();

  @GET('/api/products/findAllIngredients/{id}')
  Future<List<IngredientsInProductResponseModel>> findAllIngredientsInProduct(
    @Path('id') int id
  );

  @DELETE('/api/products/deletePicture/{id}')
  Future<ProductsResponseModel> deleteProductPicture(
    @Path('id') int id,
    @Query('minioPictureName') String minioPictureName,
  );

  @DELETE('/api/products/deleteIngredient/{ingredientId}/{productId}')
  Future<IngredientsInProductResponseModel> deleteIngredientInProduct(
    @Path('ingredientId') int ingredientId,
    @Path('productId') int productId,
  );

  @DELETE('/api/products/delete/{id}')
  Future<ProductsResponseModel> deleteProduct(
    @Path('id') int id
  );
}
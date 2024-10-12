import 'package:bake_budget_frontend/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'reports_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class ReportsApiClient {
  factory ReportsApiClient(Dio dio, {String baseUrl}) = _ReportsApiClient;

  factory ReportsApiClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return ReportsApiClient(dio, baseUrl: apiUrl);
    }
    return ReportsApiClient(dio);
  }

  @POST('/api/report/calculateByOrderSelf')
  @MultiPart()
  Future<ReportModel> calculateByOrderSelf(
    @Part(name: 'startCreatedAt') String startCreatedAt,
    @Part(name: 'endCreatedAt') String endCreatedAt,
    @Part(name: 'startFinishedAt') String startFinishedAt,
    @Part(name: 'endFinishedAt') String endFinishedAt,
  );

  @POST('/api/report/calculateByOrderGroup')
  @MultiPart()
  Future<ReportModel> calculateByOrderGroup(
    @Part(name: 'startCreatedAt') String startCreatedAt,
    @Part(name: 'endCreatedAt') String endCreatedAt,
    @Part(name: 'startFinishedAt') String startFinishedAt,
    @Part(name: 'endFinishedAt') String endFinishedAt,
  );

  @POST('/api/report/calculateByIncomeSelf')
  @MultiPart()
  Future<ReportModel> calculateByIncomeSelf(
    @Part(name: 'startCreatedAt') String startCreatedAt,
    @Part(name: 'endCreatedAt') String endCreatedAt,
    @Part(name: 'startFinishedAt') String startFinishedAt,
    @Part(name: 'endFinishedAt') String endFinishedAt,
  );

  @POST('/api/report/calculateByIncomeGroup')
  @MultiPart()
  Future<ReportModel> calculateByIncomeGroup(
    @Part(name: 'startCreatedAt') String startCreatedAt,
    @Part(name: 'endCreatedAt') String endCreatedAt,
    @Part(name: 'startFinishedAt') String startFinishedAt,
    @Part(name: 'endFinishedAt') String endFinishedAt,
  );
}
